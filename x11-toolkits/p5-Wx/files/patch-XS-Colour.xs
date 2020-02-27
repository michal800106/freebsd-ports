--- XS/Colour.xs.orig
+++ XS/Colour.xs
@@ -115,8 +115,9 @@ wxColour::GetAsString( long flags )
 #endif
 
 #if !defined(__WXMAC__)
-
+#if WXPERL_W_VERSION_LT( 3, 0, 0 )
 long
 wxColour::GetPixel()
 
 #endif
+#endif
