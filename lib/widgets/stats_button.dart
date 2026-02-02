import 'package:flutter/material.dart';
import '../common/app_settings.dart';
import '../common/app_strings.dart';

/// Widget pentru afișarea statisticilor
/// Buton floating cu numărul total de provocări jucate
class StatsButton extends StatefulWidget {
  final bool isTruth;  // Pentru a afișa culoarea corectă

  const StatsButton({
    Key? key,
    required this.isTruth, required Null Function() onStatsChanged,
  }) : super(key: key);

  @override
  State<StatsButton> createState() => _StatsButtonState();
}

class _StatsButtonState extends State<StatsButton> {
  // Funcție pentru refresh manual (chemată de butonul ✓)
  void refresh() {
    if (mounted) {
      setState(() {});
    }
  }
  /// Afișează dialog cu statistici detaliate
  void _showStatsDialog() {
    final totalPlayed = AppSettings().getTotalPlayed();
    final totalTruths = AppSettings().getTotalTruths();
    final totalDares = AppSettings().getTotalDares();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Row(
          children: [
            Icon(
              Icons.bar_chart,
              color: widget.isTruth 
                  ? const Color(0xFF2563EB) 
                  : const Color(0xFFEF4444),
              size: 28,
            ),
            const SizedBox(width: 12),
            const Text(AppStrings.statsTitle),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Total General
            _buildStatRow(
              icon: Icons.emoji_events,
              label: AppStrings.totalPlayed,
              value: totalPlayed,
              color: Colors.amber,
            ),
            const Divider(height: 24),
            
            // Total Adevăruri
            _buildStatRow(
              icon: Icons.question_answer,
              label: AppStrings.totalTruths,
              value: totalTruths,
              color: const Color(0xFF2563EB),
            ),
            const SizedBox(height: 12),
            
            // Total Provocări
            _buildStatRow(
              icon: Icons.local_fire_department,
              label: AppStrings.totalDares,
              value: totalDares,
              color: const Color(0xFFEF4444),
            ),
          ],
        ),
        actions: [
          // Buton Reset
          TextButton.icon(
            onPressed: () async {
              // Confirmăm resetarea
              final confirm = await showDialog<bool>(
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  title: const Text('Resetare Statistici'),
                  content: const Text(
                    'Ești sigur că vrei să resetezi toate statisticile? '
                    'Această acțiune nu poate fi anulată.',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, false),
                      child: const Text('Anulează'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, true),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.red,
                      ),
                      child: const Text('Resetează'),
                    ),
                  ],
                ),
              );
              
              if (confirm == true) {
                await AppSettings().resetStats();
                setState(() {});  // Refresh dialog
                if (context.mounted) {
                  Navigator.pop(context);  // Închide dialogul
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('✓ Statistici resetate!'),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              }
            },
            icon: const Icon(Icons.refresh),
            label: const Text(AppStrings.resetStats),
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey[700],
            ),
          ),
          
          // Buton Close
          TextButton(
            onPressed: () => Navigator.pop(context),
            style: TextButton.styleFrom(
              foregroundColor: widget.isTruth 
                  ? const Color(0xFF2563EB) 
                  : const Color(0xFFEF4444),
            ),
            child: const Text('Închide'),
          ),
        ],
      ),
    );
  }

  /// Construiește un rând de statistici
  Widget _buildStatRow({
    required IconData icon,
    required String label,
    required int value,
    required Color color,
  }) {
    return Row(
      children: [
        // Icon colorat
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(width: 16),
        
        // Label
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        
        // Valoare
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: color.withOpacity(0.3),
              width: 1,
            ),
          ),
          child: Text(
            value.toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final totalPlayed = AppSettings().getTotalPlayed();
    final accentColor = widget.isTruth 
        ? const Color(0xFF2563EB) 
        : const Color(0xFFEF4444);

    return GestureDetector(
      onTap: _showStatsDialog,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: accentColor.withOpacity(0.3),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(
            color: accentColor.withOpacity(0.5),
            width: 2,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon trofeu
            Icon(
              Icons.emoji_events,
              color: accentColor,
              size: 24,
            ),
            const SizedBox(width: 8),
            
            // Număr
            Text(
              totalPlayed.toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: accentColor,
              ),
            ),
            const SizedBox(width: 4),
            
            // Icon info
            Icon(
              Icons.info_outline,
              color: accentColor.withOpacity(0.7),
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}