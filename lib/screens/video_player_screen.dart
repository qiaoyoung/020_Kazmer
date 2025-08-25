import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
import '../theme/app_theme.dart';
import '../models/user.dart';

class VideoPlayerScreen extends StatefulWidget {
  final User user;

  const VideoPlayerScreen({
    super.key,
    required this.user,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController? _controller;
  bool _isPlaying = false;
  bool _isInitialized = false;
  bool _showControls = true;
  Timer? _timer;
  Timer? _hideControlsTimer;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  void _initializeVideo() {
    try {
      _controller = VideoPlayerController.asset(widget.user.profile.video);
      _controller!.initialize().then((_) {
        if (mounted) {
          setState(() {
            _isInitialized = true;
          });
          // Auto start playing
          _controller!.play();
          _isPlaying = true;
          _startTimer();
          
          // Hide controls after 3 seconds
          _hideControlsTimer = Timer(const Duration(seconds: 3), () {
            if (mounted) {
              setState(() {
                _showControls = false;
              });
            }
          });
        }
      });
    } catch (e) {
      print('Error initializing video: $e');
      // Fallback to using avatar as placeholder
      setState(() {
        _isInitialized = true;
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _hideControlsTimer?.cancel();
    _controller?.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (_controller != null && _controller!.value.isInitialized) {
      setState(() {
        if (_controller!.value.isPlaying) {
          _controller!.pause();
          _isPlaying = false;
          _timer?.cancel();
        } else {
          _controller!.play();
          _isPlaying = true;
          _startTimer();
        }
      });
    }
  }

  void _toggleControls() {
    setState(() {
      _showControls = !_showControls;
    });
    
    if (_showControls) {
      _hideControlsTimer?.cancel();
      _hideControlsTimer = Timer(const Duration(seconds: 3), () {
        if (mounted && _isPlaying) {
          setState(() {
            _showControls = false;
          });
        }
      });
    }
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: _toggleControls,
          child: Stack(
            children: [
              // Video Player or Placeholder
              _isInitialized && _controller != null && _controller!.value.isInitialized
                  ? VideoPlayer(_controller!)
                  : Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.user.profile.avatar),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.3),
                            ],
                          ),
                        ),
                      ),
                    ),
              
              // Video Controls Overlay
              Positioned.fill(
                child: AnimatedOpacity(
                  opacity: _showControls ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                    ),
                    child: Column(
                      children: [
                        // Top Bar
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 28,
                                ),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.user.profile.displayName,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Music Festival Experience',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        const Spacer(),
                        
                        const Spacer(),
                        
                        // Bottom Controls
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              // Progress Bar
                              _controller != null && _controller!.value.isInitialized
                                  ? Container(
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: FractionallySizedBox(
                                        alignment: Alignment.centerLeft,
                                        widthFactor: _controller!.value.position.inMilliseconds /
                                            _controller!.value.duration.inMilliseconds,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: AppTheme.primaryColor,
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container(
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: FractionallySizedBox(
                                        alignment: Alignment.centerLeft,
                                        widthFactor: 0.0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: AppTheme.primaryColor,
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                        ),
                                      ),
                                    ),
                              
                              const SizedBox(height: 12),
                              
                              // Time and Controls
                              Row(
                                children: [
                                  Text(
                                    _controller != null && _controller!.value.isInitialized
                                        ? '${_controller!.value.position.inMinutes}:${(_controller!.value.position.inSeconds % 60).toString().padLeft(2, '0')}'
                                        : '0:00',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.skip_previous,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      _isPlaying ? Icons.pause : Icons.play_arrow,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                    onPressed: _togglePlayPause,
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.skip_next,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                    onPressed: () {},
                                  ),
                                  const Spacer(),
                                  Text(
                                    _controller != null && _controller!.value.isInitialized
                                        ? '${_controller!.value.duration.inMinutes}:${(_controller!.value.duration.inSeconds % 60).toString().padLeft(2, '0')}'
                                        : '0:00',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
