import 'package:flutter/material.dart';

/// Widget reutilizabil pentru fundal cu gradient animat
/// Acest widget înlocuiește duplicarea codului pentru gradient-uri
class GradientBackground extends StatefulWidget {
  final List<Color> colors;        // Culorile gradient-ului
  final Widget child;              // Conținutul din interior
  final bool animate;              // Dacă se animă sau nu
  final Duration animationDuration; // Durata animației

  const GradientBackground({
    Key? key,
    required this.colors,
    required this.child,
    this.animate = false,
    this.animationDuration = const Duration(milliseconds: 800),
  }) : super(key: key);

  @override
  State<GradientBackground> createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    
    // Inițializăm controllerul de animație
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    // Animație de fade pentru tranziție lină
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    // Pornim animația întotdeauna pentru a asigura vizibilitatea
    _controller.forward();
  }

  @override
  void didUpdateWidget(GradientBackground oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    // Când se schimbă culorile, repornim animația
    if (widget.animate && oldWidget.colors != widget.colors) {
      _controller.reset();
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.animationDuration,
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: widget.colors,
        ),
      ),
      child: FadeTransition(
        opacity: _animation,
        child: widget.child,
      ),
    );
  }
}