FasdUAS 1.101.10   ��   ��    k             l     ��  ��    E ? SuperDuper! timed launchd driver (c) 2013-2015 by Shirt Pocket     � 	 	 ~   S u p e r D u p e r !   t i m e d   l a u n c h d   d r i v e r   ( c )   2 0 1 3 - 2 0 1 5   b y   S h i r t   P o c k e t   
  
 l     ��  ��      Written by Dave Nanian     �   .   W r i t t e n   b y   D a v e   N a n i a n      l     ��������  ��  ��        l     ��  ��    D > This script is intended to be called by launchd every minute.     �   |   T h i s   s c r i p t   i s   i n t e n d e d   t o   b e   c a l l e d   b y   l a u n c h d   e v e r y   m i n u t e .      l     ��������  ��  ��        l     ��  ��    c ] Using the crontab as the 'database', we check to see if there are any jobs ready to run this     �   �   U s i n g   t h e   c r o n t a b   a s   t h e   ' d a t a b a s e ' ,   w e   c h e c k   t o   s e e   i f   t h e r e   a r e   a n y   j o b s   r e a d y   t o   r u n   t h i s      l     ��   ��    b \ minute. If so, we call its copy job, relying it to check internally whether it's running on      � ! ! �   m i n u t e .   I f   s o ,   w e   c a l l   i t s   c o p y   j o b ,   r e l y i n g   i t   t o   c h e c k   i n t e r n a l l y   w h e t h e r   i t ' s   r u n n i n g   o n   " # " l     �� $ %��   $   the right day/week.    % � & & (   t h e   r i g h t   d a y / w e e k . #  ' ( ' l     ��������  ��  ��   (  ) * ) i      + , + I     �� -��
�� .aevtoappnull  �   � **** - J      ����  ��   , k     � . .  / 0 / q       1 1 ������ $0 currentlanguages currentLanguages��   0  2 3 2 q       4 4 ������ $0 previoussettings previousSettings��   3  5 6 5 q       7 7 ������ 0 unmountatend unmountAtEnd��   6  8 9 8 q       : : ������  0 crontabentries crontabEntries��   9  ; < ; q       = = ������ 0 crontabentry crontabEntry��   <  > ? > q       @ @ ������ 0 crontablist crontabList��   ?  A B A q       C C ������ (0 previousdelimiters previousDelimiters��   B  D E D q       F F ������ 0 	ourminute 	ourMinute��   E  G H G q       I I ������ 0 ourhour ourHour��   H  J K J l     ��������  ��  ��   K  L M L r     	 N O N l     P���� P n      Q R Q 1    ��
�� 
min  R l     S���� S I    ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   O o      ���� 0 	ourminute 	ourMinute M  T U T r   
  V W V l  
  X���� X n   
  Y Z Y 1    ��
�� 
hour Z l  
  [���� [ I  
 ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   W o      ���� 0 ourhour ourHour U  \ ] \ l   ��������  ��  ��   ]  ^ _ ^ Q    - ` a b ` O   # c d c r    " e f e I    �� g��
�� .sysoexecTEXT���     TEXT g m     h h � i i T / u s r / b i n / c r o n t a b   - l     |   g r e p   ' C o p y \ \ % 2 0 J o b '��   f o      ����  0 crontabentries crontabEntries d  f     a R      ������
�� .ascrerr ****      � ****��  ��   b k   + - j j  k l k l  + +�� m n��   m 2 , If we don't have any crontab entries, exit.    n � o o X   I f   w e   d o n ' t   h a v e   a n y   c r o n t a b   e n t r i e s ,   e x i t . l  p�� p L   + - q q m   + ,��
�� boovfals��   _  r s r l  . .��������  ��  ��   s  t u t Z  . : v w���� v =   . 1 x y x o   . /����  0 crontabentries crontabEntries y m   / 0 z z � { {   w L   4 6 | | m   4 5��
�� boovfals��  ��   u  } ~ } l  ; ;��������  ��  ��   ~   �  l  ; ;�� � ���   � T N Now we have a list of all the text items that run our "Copy Job" applet. Step    � � � � �   N o w   w e   h a v e   a   l i s t   o f   a l l   t h e   t e x t   i t e m s   t h a t   r u n   o u r   " C o p y   J o b "   a p p l e t .   S t e p �  � � � l  ; ;�� � ���   � S M through them, extract the hour and minute and allow the ones that correspond    � � � � �   t h r o u g h   t h e m ,   e x t r a c t   t h e   h o u r   a n d   m i n u t e   a n d   a l l o w   t h e   o n e s   t h a t   c o r r e s p o n d �  � � � l  ; ;�� � ���   � Z T to 'now'. Secondary checks will be done in the copy job to verify the weekday, etc.    � � � � �   t o   ' n o w ' .   S e c o n d a r y   c h e c k s   w i l l   b e   d o n e   i n   t h e   c o p y   j o b   t o   v e r i f y   t h e   w e e k d a y ,   e t c . �  � � � l  ; ;��������  ��  ��   �  � � � r   ; @ � � � n   ; > � � � 2  < >��
�� 
cpar � o   ; <����  0 crontabentries crontabEntries � o      ���� 0 crontablist crontabList �  � � � r   A F � � � 1   A D��
�� 
txdl � o      ���� (0 previousdelimiters previousDelimiters �  � � � l  G G��������  ��  ��   �  � � � l  G G�� � ���   � ( " crontab requires tab as delimiter    � � � � D   c r o n t a b   r e q u i r e s   t a b   a s   d e l i m i t e r �  � � � l  G G��������  ��  ��   �  � � � r   G L � � � m   G H � � � � �  	 � 1   H K��
�� 
txdl �  � � � l  M M��������  ��  ��   �  � � � X   M � ��� � � Q   ] � � ��� � k   ` � � �  � � � r   ` j � � � l  ` f ����� � c   ` f � � � l  ` d ����� � n   ` d � � � 4  a d�� �
�� 
cwor � m   b c����  � o   ` a���� 0 crontabentry crontabEntry��  ��   � m   d e��
�� 
nmbr��  ��   � o      ���� 0 crontabminute crontabMinute �  � � � r   k u � � � l  k q ����� � c   k q � � � l  k o ����� � n   k o � � � 4  l o�� �
�� 
cwor � m   m n����  � o   k l���� 0 crontabentry crontabEntry��  ��   � m   o p��
�� 
nmbr��  ��   � o      ���� 0 crontabhour crontabHour �  � � � l  v v��������  ��  ��   �  � � � l  v v�� � ���   � U O If we match the hour and minute, launch the applet with open. The command-line    � � � � �   I f   w e   m a t c h   t h e   h o u r   a n d   m i n u t e ,   l a u n c h   t h e   a p p l e t   w i t h   o p e n .   T h e   c o m m a n d - l i n e �  � � � l  v v�� � ���   � P J is pre-encoded as the last item of the crontab entry. Note that we switch    � � � � �   i s   p r e - e n c o d e d   a s   t h e   l a s t   i t e m   o f   t h e   c r o n t a b   e n t r y .   N o t e   t h a t   w e   s w i t c h �  � � � l  v v�� � ���   � 4 . from tab to space and back to tab delimiters.    � � � � \   f r o m   t a b   t o   s p a c e   a n d   b a c k   t o   t a b   d e l i m i t e r s . �  � � � l  v v��~�}�  �~  �}   �  ��| � Z   v � � ��{�z � F   v � � � � l  v { ��y�x � =  v { � � � o   v w�w�w 0 	ourminute 	ourMinute � o   w z�v�v 0 crontabminute crontabMinute�y  �x   � l  ~ � ��u�t � =  ~ � � � � o   ~ �s�s 0 ourhour ourHour � o    ��r�r 0 crontabhour crontabHour�u  �t   � k   � � � �  � � � r   � � � � � m   � � � � � � �    � 1   � ��q
�q 
txdl �  � � � l  � ��p�o�n�p  �o  �n   �  � � � I  � ��m ��l
�m .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  / u s r / b i n / o p e n   � l  � � ��k�j � n   � � � � � 4  � ��i �
�i 
citm � m   � ��h�h�� � o   � ��g�g 0 crontabentry crontabEntry�k  �j  �l   �  � � � l  � ��f�e�d�f  �e  �d   �  ��c � r   � � � � � m   � � � � �    	 � 4   � ��b
�b 
citm o   � ��a�a 0 	delimters  �c  �{  �z  �|   � R      �`�_�^
�` .ascrerr ****      � ****�_  �^  ��  �� 0 crontabentry crontabEntry � o   P Q�]�] 0 crontablist crontabList �  l  � ��\�[�Z�\  �[  �Z   �Y r   � � o   � ��X�X (0 previousdelimiters previousDelimiters 1   � ��W
�W 
txdl�Y   * �V l     �U�T�S�U  �T  �S  �V       �R	�R   �Q
�Q .aevtoappnull  �   � ****	 �P ,�O�N
�M
�P .aevtoappnull  �   � ****�O  �N  
 	�L�K�J�I�H�G�F�E�D�L $0 currentlanguages currentLanguages�K $0 previoussettings previousSettings�J 0 unmountatend unmountAtEnd�I  0 crontabentries crontabEntries�H 0 crontabentry crontabEntry�G 0 crontablist crontabList�F (0 previousdelimiters previousDelimiters�E 0 	ourminute 	ourMinute�D 0 ourhour ourHour �C�B�A h�@�?�> z�=�< ��;�:�9�8�7�6�5�4 � ��3 ��2
�C .misccurdldt    ��� null
�B 
min 
�A 
hour
�@ .sysoexecTEXT���     TEXT�?  �>  
�= 
cpar
�< 
txdl
�; 
kocl
�: 
cobj
�9 .corecnte****       ****
�8 
cwor
�7 
nmbr�6 0 crontabminute crontabMinute�5 0 crontabhour crontabHour
�4 
bool
�3 
citm�2 0 	delimters  �M �*j  �,E�O*j  �,E�O ) 	�j E�UW 	X  fO��  fY hO��-E�O*�,E�O�*�,FO q�[��l kh  V��k/�&E` O��l/�&E` O�_  	 �_  a & (a *�,FOa �a i/%j Oa *a _ /FY hW X  h[OY��O�*�,F ascr  ��ޭ