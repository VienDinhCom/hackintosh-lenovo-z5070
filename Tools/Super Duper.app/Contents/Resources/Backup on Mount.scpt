FasdUAS 1.101.10   ��   ��    k             l     ��  ��    E ? SuperDuper! copy on mount driver (c) 2009-2015 by Shirt Pocket     � 	 	 ~   S u p e r D u p e r !   c o p y   o n   m o u n t   d r i v e r   ( c )   2 0 0 9 - 2 0 1 5   b y   S h i r t   P o c k e t   
  
 l     ��  ��      Written by Dave Nanian     �   .   W r i t t e n   b y   D a v e   N a n i a n      l     ��������  ��  ��        l     ��  ��    w q This script is intended to be called by launchd when the user logs in (the "-runAtLogin" parameter is passed in)     �   �   T h i s   s c r i p t   i s   i n t e n d e d   t o   b e   c a l l e d   b y   l a u n c h d   w h e n   t h e   u s e r   l o g s   i n   ( t h e   " - r u n A t L o g i n "   p a r a m e t e r   i s   p a s s e d   i n )      l     ��  ��    2 , and when volumes are mounted and unmounted.     �   X   a n d   w h e n   v o l u m e s   a r e   m o u n t e d   a n d   u n m o u n t e d .      l     ��������  ��  ��        l     ��   ��    ~ x When new volumes appear, the script checks to see if the user has any scheduled copies that mention that volume's name.      � ! ! �   W h e n   n e w   v o l u m e s   a p p e a r ,   t h e   s c r i p t   c h e c k s   t o   s e e   i f   t h e   u s e r   h a s   a n y   s c h e d u l e d   c o p i e s   t h a t   m e n t i o n   t h a t   v o l u m e ' s   n a m e .   " # " l     �� $ %��   $ u o If so, each settings file that mentions the volume is checked to see if that volume's name is the destination.    % � & & �   I f   s o ,   e a c h   s e t t i n g s   f i l e   t h a t   m e n t i o n s   t h e   v o l u m e   i s   c h e c k e d   t o   s e e   i f   t h a t   v o l u m e ' s   n a m e   i s   t h e   d e s t i n a t i o n . #  ' ( ' l     �� ) *��   ) y s Each of those that match are checked to see if they're set to run at mount time, and each that is has its schedule    * � + + �   E a c h   o f   t h o s e   t h a t   m a t c h   a r e   c h e c k e d   t o   s e e   i f   t h e y ' r e   s e t   t o   r u n   a t   m o u n t   t i m e ,   a n d   e a c h   t h a t   i s   h a s   i t s   s c h e d u l e (  , - , l     �� . /��   .   driver script launched.    / � 0 0 0   d r i v e r   s c r i p t   l a u n c h e d . -  1 2 1 l     ��������  ��  ��   2  3 4 3 i      5 6 5 I      �� 7����  0 createdisklist createDiskList 7  8�� 8 o      ���� 0 disklistfile diskListFile��  ��   6 Q      9 :�� 9 I   �� ;��
�� .sysoexecTEXT���     TEXT ; b    
 < = < m     > > � ? ? B / u s r / s b i n / d i s k u t i l   l i s t   - p l i s t   >   = n    	 @ A @ 1    	��
�� 
strq A n     B C B 1    ��
�� 
psxp C o    ���� 0 disklistfile diskListFile��   : R      ������
�� .ascrerr ****      � ****��  ��  ��   4  D E D l     ��������  ��  ��   E  F G F i     H I H I     �� J��
�� .aevtoappnull  �   � **** J o      ���� 0 argv  ��   I k     K K  L M L q       N N ������ 0 currentvolume currentVolume��   M  O P O q       Q Q ������ $0 activevolumelist activeVolumeList��   P  R S R q       T T ������ "0 ourscriptfolder ourScriptFolder��   S  U V U q       W W ������ 00 possiblescheduleditems possibleScheduledItems��   V  X Y X q       Z Z ������ 0 schedulefile scheduleFile��   Y  [ \ [ q       ] ] ������ 0 
runonmount 
runOnMount��   \  ^ _ ^ q       ` ` ������ ,0 temporaryitemsfolder temporaryItemsFolder��   _  a b a q       c c ������ (0 lastvolumelistfile lastVolumeListFile��   b  d e d q       f f ������ 40 lastvolumelistfileexists lastVolumeListFileExists��   e  g h g q       i i ������ .0 currentvolumelistfile currentVolumeListFile��   h  j k j l     ��������  ��  ��   k  l m l l     �� n o��   n O I Store all our temporary files locally to support multiple users properly    o � p p �   S t o r e   a l l   o u r   t e m p o r a r y   f i l e s   l o c a l l y   t o   s u p p o r t   m u l t i p l e   u s e r s   p r o p e r l y m  q r q l     ��������  ��  ��   r  s t s r      u v u l    	 w���� w I    	�� x y
�� .earsffdralis        afdr x l     z���� z m     ��
�� afdmtemp��  ��   y �� { |
�� 
from { l    }���� } m    ��
�� fldmfldu��  ��   | �� ~��
�� 
rtyp ~ m    ��
�� 
TEXT��  ��  ��   v o      ���� ,0 temporaryitemsfolder temporaryItemsFolder t   �  r     � � � l    ����� � n     � � � 1    ��
�� 
psxp � l    ����� � b     � � � o    ���� ,0 temporaryitemsfolder temporaryItemsFolder � m     � � � � � H c o m . s h i r t p o c k e t . l a s t V o l u m e L i s t . p l i s t��  ��  ��  ��   � o      ���� (0 lastvolumelistfile lastVolumeListFile �  � � � r     � � � l    ����� � n     � � � 1    ��
�� 
psxp � l    ����� � b     � � � o    ���� ,0 temporaryitemsfolder temporaryItemsFolder � m     � � � � � N c o m . s h i r t p o c k e t . c u r r e n t V o l u m e L i s t . p l i s t��  ��  ��  ��   � o      ���� .0 currentvolumelistfile currentVolumeListFile �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � E ? Prevent multiple Backup on Mounts from running simultaneously     � � � � ~   P r e v e n t   m u l t i p l e   B a c k u p   o n   M o u n t s   f r o m   r u n n i n g   s i m u l t a n e o u s l y   �  � � � l   �� � ���   � B < Note that since lockfile was removed in El Capitan (10.11),    � � � � x   N o t e   t h a t   s i n c e   l o c k f i l e   w a s   r e m o v e d   i n   E l   C a p i t a n   ( 1 0 . 1 1 ) , �  � � � l   �� � ���   � ] W we've included a copy in our application package, which must be located since the user    � � � � �   w e ' v e   i n c l u d e d   a   c o p y   i n   o u r   a p p l i c a t i o n   p a c k a g e ,   w h i c h   m u s t   b e   l o c a t e d   s i n c e   t h e   u s e r �  � � � l   �� � ���   � &   could have renamed and moved it    � � � � @   c o u l d   h a v e   r e n a m e d   a n d   m o v e d   i t �  � � � l   ��������  ��  ��   �  � � � O    3 � � � I    2�� ���
�� .sysoexecTEXT���     TEXT � b     . � � � n     , � � � 1   * ,��
�� 
strq � l    * ����� � n     * � � � 1   ( *��
�� 
psxp � l    ( ����� � c     ( � � � l    & ����� � e     & � � 5     &�� ���
�� 
appf � m   " # � � � � � , c o m . b l a c e y . S u p e r D u p e r !
�� kfrmID  ��  ��   � m   & '��
�� 
TEXT��  ��  ��  ��   � m   , - � � � � � � / C o n t e n t s / M a c O S / l o c k f i l e   - 5   - r   2 5   - l   1 2 0   / t m p / c o m . s h i r t p o c k e t . c o p y O n M o u n t . l o c k��   � m     � ��                                                                                  MACS  alis    t  Macintosh HD               �\	'H+     2
Finder.app                                                      W��B�L        ����  	                CoreServices    �\Ag      �B�       2   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � l  4 4��������  ��  ��   �  � � � O  4 D � � � r   8 C � � � I  8 A�� ���
�� .coredoexbool        obj  � l  8 = ����� � c   8 = � � � o   8 9���� (0 lastvolumelistfile lastVolumeListFile � m   9 <��
�� 
psxf��  ��  ��   � o      ���� 40 lastvolumelistfileexists lastVolumeListFileExists � m   4 5 � ��                                                                                  MACS  alis    t  Macintosh HD               �\	'H+     2
Finder.app                                                      W��B�L        ����  	                CoreServices    �\Ag      �B�       2   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � l  E E��������  ��  ��   �  � � � l  E E� � ��   � q k Check to see if this is our "initialization" run. If so, and it's not already there from a previous login,    � � � � �   C h e c k   t o   s e e   i f   t h i s   i s   o u r   " i n i t i a l i z a t i o n "   r u n .   I f   s o ,   a n d   i t ' s   n o t   a l r e a d y   t h e r e   f r o m   a   p r e v i o u s   l o g i n , �  � � � l  E E�~ � ��~   � 2 , create our initial list of mounted volumes.    � � � � X   c r e a t e   o u r   i n i t i a l   l i s t   o f   m o u n t e d   v o l u m e s . �  � � � l  E E�}�|�{�}  �|  �{   �  � � � Z   E � � ��z�y � F   E g � � � F   E ] � � � l  E L ��x�w � =  E L � � � l  E J ��v�u � I  E J�t ��s
�t .corecnte****       **** � o   E F�r�r 0 argv  �s  �v  �u   � m   J K�q�q �x  �w   � l  O Y ��p�o � =  O Y � � � n   O U � � � 4   P U�n �
�n 
cobj � m   S T�m�m  � o   O P�l�l 0 argv   � m   U X � � � � �  - r u n A t L o g i n�p  �o   � =  ` c � � � o   ` a�k�k 40 lastvolumelistfileexists lastVolumeListFileExists � m   a b�j
�j boovfals � k   j � � �  � � � l  j j�i�h�g�i  �h  �g   �  ��f � Q   j � � � � � O  m x �  � I   q w�e�d�e  0 createdisklist createDiskList �c o   r s�b�b (0 lastvolumelistfile lastVolumeListFile�c  �d     f   m n � R      �a�`�_
�a .ascrerr ****      � ****�`  �_   � k   � �  I  � ��^�]
�^ .sysoexecTEXT���     TEXT m   � � � ` / b i n / r m   - f   / t m p / c o m . s h i r t p o c k e t . c o p y O n M o u n t . l o c k�]   	�\	 L   � ��[�[  �\  �f  �z  �y   � 

 l  � ��Z�Y�X�Z  �Y  �X    l  � ��W�V�U�W  �V  �U    l  � ��T�T   r l At this point we know we're running due to a mount. But the runAtLog vs. mount ordering is nondeterministic    � �   A t   t h i s   p o i n t   w e   k n o w   w e ' r e   r u n n i n g   d u e   t o   a   m o u n t .   B u t   t h e   r u n A t L o g   v s .   m o u n t   o r d e r i n g   i s   n o n d e t e r m i n i s t i c  l  � ��S�S   n h to run whenever the user logs in. So, we need to abort if the lastVolumeList, created above and updated    � �   t o   r u n   w h e n e v e r   t h e   u s e r   l o g s   i n .   S o ,   w e   n e e d   t o   a b o r t   i f   t h e   l a s t V o l u m e L i s t ,   c r e a t e d   a b o v e   a n d   u p d a t e d  l  � ��R�R   0 * from the current list below, isn't there.    � T   f r o m   t h e   c u r r e n t   l i s t   b e l o w ,   i s n ' t   t h e r e .  l  � ��Q�P�O�Q  �P  �O     Z   �!"�N�M! o   � ��L�L 40 lastvolumelistfileexists lastVolumeListFileExists" k   �## $%$ O  � �&'& r   � �()( l  � �*�K�J* n   � �+,+ 1   � ��I
�I 
valL, n   � �-.- 4   � ��H/
�H 
plii/ m   � �00 �11   V o l u m e s F r o m D i s k s. 4   � ��G2
�G 
plif2 o   � ��F�F (0 lastvolumelistfile lastVolumeListFile�K  �J  ) o      �E�E  0 lastvolumelist lastVolumeList' m   � �33�                                                                                  sevs  alis    �  Macintosh HD               �\	'H+     2System Events.app                                               ��4�]        ����  	                CoreServices    �\Ag      �5"�       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  % 454 l  � ��D�C�B�D  �C  �B  5 676 Q   � �89:8 O  � �;<; I   � ��A=�@�A  0 createdisklist createDiskList= >�?> o   � ��>�> .0 currentvolumelistfile currentVolumeListFile�?  �@  <  f   � �9 R      �=�<�;
�= .ascrerr ****      � ****�<  �;  : k   � �?? @A@ I  � ��:B�9
�: .sysoexecTEXT���     TEXTB m   � �CC �DD ` / b i n / r m   - f   / t m p / c o m . s h i r t p o c k e t . c o p y O n M o u n t . l o c k�9  A E�8E L   � ��7�7  �8  7 FGF l  � ��6�5�4�6  �5  �4  G HIH O  � �JKJ r   � �LML l  � �N�3�2N n   � �OPO 1   � ��1
�1 
valLP n   � �QRQ 4   � ��0S
�0 
pliiS m   � �TT �UU   V o l u m e s F r o m D i s k sR 4   � ��/V
�/ 
plifV o   � ��.�. .0 currentvolumelistfile currentVolumeListFile�3  �2  M o      �-�- $0 activevolumelist activeVolumeListK m   � �WW�                                                                                  sevs  alis    �  Macintosh HD               �\	'H+     2System Events.app                                               ��4�]        ����  	                CoreServices    �\Ag      �5"�       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  I XYX l  � ��,�+�*�,  �+  �*  Y Z[Z l  � ��)\]�)  \ T N Any volumes that don't appear in the lastVolumeList are newly mounted volumes   ] �^^ �   A n y   v o l u m e s   t h a t   d o n ' t   a p p e a r   i n   t h e   l a s t V o l u m e L i s t   a r e   n e w l y   m o u n t e d   v o l u m e s[ _`_ l  � ��(�'�&�(  �'  �&  ` aba X   ��c�%dc k   �ee fgf Z   �hi�$�#h H   jj E   klk o   �"�"  0 lastvolumelist lastVolumeListl o  �!�! 0 currentvolume currentVolumei k  	�mm non l 		� ���   �  �  o pqp l 		�rs�  r � ~ This is a newly mounted volume. We take a quick first pass by looking for schedules that have the volume name in their names.   s �tt �   T h i s   i s   a   n e w l y   m o u n t e d   v o l u m e .   W e   t a k e   a   q u i c k   f i r s t   p a s s   b y   l o o k i n g   f o r   s c h e d u l e s   t h a t   h a v e   t h e   v o l u m e   n a m e   i n   t h e i r   n a m e s .q uvu l 		�wx�  w [ U We make sure, given there may be other files in the directory, that only .sdsp files   x �yy �   W e   m a k e   s u r e ,   g i v e n   t h e r e   m a y   b e   o t h e r   f i l e s   i n   t h e   d i r e c t o r y ,   t h a t   o n l y   . s d s p   f i l e sv z{z l 		�|}�  |    are included in the list.   } �~~ 4   a r e   i n c l u d e d   i n   t h e   l i s t .{ � l 		����  �  y Then, we verify that the SDtargetVolumeName property is set to the name of the volume that's mounted as the second test.   � ��� �   T h e n ,   w e   v e r i f y   t h a t   t h e   S D t a r g e t V o l u m e N a m e   p r o p e r t y   i s   s e t   t o   t h e   n a m e   o f   t h e   v o l u m e   t h a t ' s   m o u n t e d   a s   t h e   s e c o n d   t e s t .� ��� l 		����  � S M Finally, we check to see if the SDRunOnMount property is set for the volume.   � ��� �   F i n a l l y ,   w e   c h e c k   t o   s e e   i f   t h e   S D R u n O n M o u n t   p r o p e r t y   i s   s e t   f o r   t h e   v o l u m e .� ��� l 		����  �  �  � ��� l 		����  � { u If all three tests pass, we run the schedule driver for those settings, setting the "IMMEDIATE" environment variable   � ��� �   I f   a l l   t h r e e   t e s t s   p a s s ,   w e   r u n   t h e   s c h e d u l e   d r i v e r   f o r   t h o s e   s e t t i n g s ,   s e t t i n g   t h e   " I M M E D I A T E "   e n v i r o n m e n t   v a r i a b l e� ��� l 		����  � D > so it doesn't check to see if it's due to run in the crontab.   � ��� |   s o   i t   d o e s n ' t   c h e c k   t o   s e e   i f   i t ' s   d u e   t o   r u n   i n   t h e   c r o n t a b .� ��� l 		����  �  �  � ��� r  	��� I 	���
� .earsffdralis        afdr� m  	�
� afdmasup� ���
� 
from� m  �
� fldmfldu� ���
� 
rtyp� m  �

�
 
TEXT�  � o      �	�	 "0 ourscriptfolder ourScriptFolder� ��� r  "��� c   ��� b  ��� o  �� "0 ourscriptfolder ourScriptFolder� m  �� ��� 8 S u p e r D u p e r ! : S c h e d u l e d   C o p i e s� m  �
� 
alis� o      �� "0 ourscriptfolder ourScriptFolder� ��� l ##����  �  �  � ��� O #O��� r  'N��� l 'L���� 6 'L��� n  '1��� 2  -1� 
�  
docf� 4  '-���
�� 
cfol� o  +,���� "0 ourscriptfolder ourScriptFolder� F  4K��� E  5>��� 1  6:��
�� 
pnam� o  ;=���� 0 currentvolume currentVolume� E  ?J��� 1  @D��
�� 
pnam� m  EI�� ��� 
 . s d s p�  �  � o      ���� 00 possiblescheduleditems possibleScheduledItems� m  #$���                                                                                  MACS  alis    t  Macintosh HD               �\	'H+     2
Finder.app                                                      W��B�L        ����  	                CoreServices    �\Ag      �B�       2   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l PP��������  ��  ��  � ���� X  P������ k  d��� ��� l dd������  � c ] Make sure we don't fail if the property list entry doesn't exist (shouldn't ever happen, but   � ��� �   M a k e   s u r e   w e   d o n ' t   f a i l   i f   t h e   p r o p e r t y   l i s t   e n t r y   d o e s n ' t   e x i s t   ( s h o u l d n ' t   e v e r   h a p p e n ,   b u t� ��� l dd������  �   never say never, etc).   � ��� .   n e v e r   s a y   n e v e r ,   e t c ) .� ���� Q  d������ k  g��� ��� O g���� r  m���� l m������� n  m���� 1  ����
�� 
valL� n  m���� 4  y����
�� 
plii� m  |�� ��� $ S D t a r g e t V o l u m e N a m e� l my������ 4  my���
�� 
plif� l qx������ b  qx��� l qt������ c  qt��� o  qr���� 0 schedulefile scheduleFile� m  rs��
�� 
TEXT��  ��  � m  tw�� ��� , : S e s s i o n   S e t t i n g s . s d s s��  ��  ��  ��  ��  ��  � o      ����  0 scheduletarget scheduleTarget� m  gj���                                                                                  sevs  alis    �  Macintosh HD               �\	'H+     2System Events.app                                               ��4�]        ����  	                CoreServices    �\Ag      �5"�       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l ����������  ��  ��  � ���� Z  ��������� = ����� c  ����� o  ������ 0 currentvolume currentVolume� m  ����
�� 
TEXT� o  ������  0 scheduletarget scheduleTarget� Q  ������� k  ���� ��� O ����� r  ����� l �� ����  n  �� 1  ����
�� 
valL n  �� 4  ����
�� 
plii m  �� �  S D R u n O n M o u n t l ������ 4  ����	
�� 
plif	 l ��
����
 b  �� l ������ c  �� o  ������ 0 schedulefile scheduleFile m  ����
�� 
TEXT��  ��   m  �� � , : S e s s i o n   S e t t i n g s . s d s s��  ��  ��  ��  ��  ��  � o      ���� 0 
runonmount 
runOnMount� m  ���                                                                                  sevs  alis    �  Macintosh HD               �\	'H+     2System Events.app                                               ��4�]        ����  	                CoreServices    �\Ag      �5"�       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  l ����������  ��  ��   �� Z  ������ = �� o  ������ 0 
runonmount 
runOnMount m  ����
�� boovtrue I ������
�� .sysoexecTEXT���     TEXT b  �� m  �� � . e n v   I M M E D I A T E = Y E S   o p e n   n  ��  1  ����
�� 
strq  n  ��!"! 1  ����
�� 
psxp" l ��#����# c  ��$%$ l ��&����& b  ��'(' l ��)����) c  ��*+* o  ������ 0 schedulefile scheduleFile+ m  ����
�� 
TEXT��  ��  ( m  ��,, �--  : C o p y   J o b . a p p��  ��  % m  ����
�� 
alis��  ��  ��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 schedulefile scheduleFile� o  ST���� 00 possiblescheduleditems possibleScheduledItems��  �$  �#  g .��. l ����������  ��  ��  ��  �% 0 currentvolume currentVolumed o   � ����� $0 activevolumelist activeVolumeListb /0/ l   ��������  ��  ��  0 121 l   ��34��  3 7 1 Replace the lastVolumeListFile with the new one.   4 �55 b   R e p l a c e   t h e   l a s t V o l u m e L i s t F i l e   w i t h   t h e   n e w   o n e .2 676 l   ��������  ��  ��  7 8��8 I  ��9��
�� .sysoexecTEXT���     TEXT9 b   :;: b   <=< b   >?> m   @@ �AA  / b i n / m v   - f  ? n  BCB 1  ��
�� 
strqC o  ���� .0 currentvolumelistfile currentVolumeListFile= m  
DD �EE   ; n  FGF 1  ��
�� 
strqG o  ���� (0 lastvolumelistfile lastVolumeListFile��  ��  �N  �M    HIH l ��������  ��  ��  I J��J I ��K��
�� .sysoexecTEXT���     TEXTK m  LL �MM ` / b i n / r m   - f   / t m p / c o m . s h i r t p o c k e t . c o p y O n M o u n t . l o c k��  ��   G N��N l     ��������  ��  ��  ��       ��OPQ��  O ������  0 createdisklist createDiskList
�� .aevtoappnull  �   � ****P �� 6����RS����  0 createdisklist createDiskList�� ��T�� T  ���� 0 disklistfile diskListFile��  R ���� 0 disklistfile diskListFileS  >����������
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  ��  ��,�,%j W X  hQ �� I����UV�
�� .aevtoappnull  �   � ****�� 0 argv  ��  U �~�}�|�{�z�y�x�w�v�u�t�~ 0 argv  �} 0 currentvolume currentVolume�| $0 activevolumelist activeVolumeList�{ "0 ourscriptfolder ourScriptFolder�z 00 possiblescheduleditems possibleScheduledItems�y 0 schedulefile scheduleFile�x 0 
runonmount 
runOnMount�w ,0 temporaryitemsfolder temporaryItemsFolder�v (0 lastvolumelistfile lastVolumeListFile�u 40 lastvolumelistfileexists lastVolumeListFileExists�t .0 currentvolumelistfile currentVolumeListFileV 6�s�r�q�p�o�n�m ��l � ��k ��j�i ��h�g�f�e�d ��c�b�a�`3�_�^0�]�\CT�[�Z��Y�X�WW�V����U,@DL
�s afdmtemp
�r 
from
�q fldmfldu
�p 
rtyp
�o 
TEXT�n 
�m .earsffdralis        afdr
�l 
psxp
�k 
appf
�j kfrmID  
�i 
strq
�h .sysoexecTEXT���     TEXT
�g 
psxf
�f .coredoexbool        obj 
�e .corecnte****       ****
�d 
cobj
�c 
bool�b  0 createdisklist createDiskList�a  �`  
�_ 
plif
�^ 
plii
�] 
valL�\  0 lastvolumelist lastVolumeList
�[ 
kocl
�Z afdmasup
�Y 
alis
�X 
cfol
�W 
docfW  
�V 
pnam�U  0 scheduletarget scheduleTarget� ������ E�O��%�,E�O��%�,E�O� *���0E�&�,�,�%j UO� �a &j E�UO�j k 	 �a k/a  a &	 	�f a & % ) *�k+ UW X  a j OhY hO��a  *a �/a a /a ,E`  UO ) *�k+ UW X  a !j OhOa  *a �/a a "/a ,E�UO�[a #a l kh _  � �a $����� E�O�a %%a &&E�O� )*a '�/a (-a )[[a *,\Z�@\[a *,\Za +@A1E�UO ��[a #a l kh  �a  *a ��&a ,%/a a -/a ,E` .UO��&_ .  S Ga  *a ��&a /%/a a 0/a ,E�UO�e  a 1��&a 2%a &&�,�,%j Y hW X  hY hW X  h[OY�oY hOP[OY� Oa 3��,%a 4%��,%j Y hOa 5j ascr  ��ޭ