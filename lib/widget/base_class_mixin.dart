import 'package:flutter_responsive/utils/font_utils.dart';
import 'package:flutter_responsive/utils/sizer_manager.dart';

mixin BaseClassMixin {
  final _sizer = const SizerManager();
  final _fontUtils = const FontUtils();

  SizerManager get sizer => _sizer;

  FontUtils get fontUtils => _fontUtils;
}
