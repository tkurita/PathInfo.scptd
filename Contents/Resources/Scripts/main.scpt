FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007, 2008, 2009, 2010 ,2011 Tetsuro KURITA

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	(   C o p y r i g h t   ( C )   2 0 0 7 ,   2 0 0 8 ,   2 0 0 9 ,   2 0 1 0   , 2 0 1 1   T e t s u r o   K U R I T A  
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r 
 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 F o o b a r   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   F o o b a r .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / >     
  
 l     ��������  ��  ��        j     �� 
�� 
pnam  m        �    P a t h I n f o      j    �� 
�� 
vers  m       �    1 . 1      l     ��������  ��  ��        l      ��  ��    a [!@title PathInfo Reference* Version : 1.1* Author : Tetsuro KURITA ((<tkurita@mac.com>))     �   � ! @ t i t l e   P a t h I n f o   R e f e r e n c e  *   V e r s i o n   :   1 . 1  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < t k u r i t a @ m a c . c o m > ) )       l     ��������  ��  ��         l      �� ! "��   ! D >!@group Class methodsObtain information from a path quickly.    " � # # | ! @ g r o u p   C l a s s   m e t h o d s  O b t a i n   i n f o r m a t i o n   f r o m   a   p a t h   q u i c k l y .     $ % $ l     ��������  ��  ��   %  & ' & l      �� ( )��   (60!@abstructObtain a name from a reference to a file/folder.@param an_item (a reference to file/folder) : Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.@resulttext : a name of the passed item    ) � * *` ! @ a b s t r u c t  O b t a i n   a   n a m e   f r o m   a   r e f e r e n c e   t o   a   f i l e / f o l d e r .  @ p a r a m   a n _ i t e m   ( a   r e f e r e n c e   t o   f i l e / f o l d e r )   :    A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l .  @ r e s u l t  t e x t   :   a   n a m e   o f   t h e   p a s s e d   i t e m  '  + , + i    	 - . - I      �� /���� 0 name_of   /  0�� 0 o      ���� 0 an_item  ��  ��   . L      1 1 n    
 2 3 2 I    
�������� 0 	item_name  ��  ��   3 I     �� 4���� 0 	make_with   4  5�� 5 o    ���� 0 an_item  ��  ��   ,  6 7 6 l     ��������  ��  ��   7  8 9 8 l      �� : ;��   :!@abstructObtain a name of the item with removing a path extension.Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.@resultUnicode text : basename of the passed item    ; � < <( ! @ a b s t r u c t  O b t a i n   a   n a m e   o f   t h e   i t e m   w i t h   r e m o v i n g   a   p a t h   e x t e n s i o n .  A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l .  @ r e s u l t  U n i c o d e   t e x t   :   b a s e n a m e   o f   t h e   p a s s e d   i t e m  9  = > = i   
  ? @ ? I      �� A���� 0 basename_of   A  B�� B o      ���� 0 an_item  ��  ��   @ L      C C n    
 D E D I    
�������� 0 basename  ��  ��   E I     �� F���� 0 	make_with   F  G�� G o    ���� 0 an_item  ��  ��   >  H I H l     ��������  ��  ��   I  J K J l      �� L M��   LZT!@abstructObtain a path extension of the item. The result does not starts with ".".@param an_item (a reference to file/folder) : Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.<!-- end locale -->@resulttext : A path extension    M � N N� ! @ a b s t r u c t  O b t a i n   a   p a t h   e x t e n s i o n   o f   t h e   i t e m .   T h e   r e s u l t   d o e s   n o t   s t a r t s   w i t h   " . " .  @ p a r a m   a n _ i t e m   ( a   r e f e r e n c e   t o   f i l e / f o l d e r )   :    A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  t e x t   :   A   p a t h   e x t e n s i o n  K  O P O i     Q R Q I      �� S���� 0 path_extension_of   S  T�� T o      ���� 0 an_item  ��  ��   R L      U U n     V W V I    �������� 0 path_extension  ��  ��   W I     �� X���� 0 	make_with   X  Y Z Y o    ���� 0 an_item   Z  [�� [ m    ��
�� boovtrue��  ��   P  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ i     ` a ` I      �� b���� 0 	suffix_of   b  c�� c o      ���� 0 an_item  ��  ��   a L      d d I     �� e���� 0 path_extension_of   e  f�� f o    ���� 0 an_item  ��  ��   _  g h g l     ��������  ��  ��   h  i j i l      �� k l��   k � �!@abstructSplit a file name into a base name and a path extension.@param a_name (text) : A file name<!-- end locale -->@result list of text: {basename, path_extension}    l � m mX ! @ a b s t r u c t  S p l i t   a   f i l e   n a m e   i n t o   a   b a s e   n a m e   a n d   a   p a t h   e x t e n s i o n .  @ p a r a m   a _ n a m e   ( t e x t )   :   A   f i l e   n a m e  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t   l i s t   o f   t e x t :   { b a s e n a m e ,   p a t h _ e x t e n s i o n }  j  n o n i     p q p I      �� r���� 0 
split_name   r  s�� s o      ���� 
0 a_name  ��  ��   q k     F t t  u v u Z     @ w x�� y w E      z { z o     ���� 
0 a_name   { m     | | � } }  . x k    6 ~ ~   �  r     � � � n   	 � � � 1    	��
�� 
txdl � 1    ��
�� 
ascr � o      ���� 0 tid   �  � � � r     � � � J     � �  ��� � m     � � � � �  .��   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � n     � � � 2    ��
�� 
citm � o    ���� 
0 a_name   � o      ���� 0 name_elements   �  � � � r      � � � n    � � � 4    �� �
�� 
cobj � m    ������ � o    ���� 0 name_elements   � o      ���� 0 a_suffix   �  � � � r   ! 0 � � � c   ! . � � � l  ! , ����� � n   ! , � � � 7  " ,�� � �
�� 
cobj � m   & (����  � m   ) +������ � o   ! "���� 0 name_elements  ��  ��   � m   , -��
�� 
utxt � o      ���� 0 
a_basename   �  ��� � r   1 6 � � � o   1 2���� 0 tid   � n      � � � 1   3 5��
�� 
txdl � 1   2 3��
�� 
ascr��  ��   y k   9 @ � �  � � � r   9 < � � � o   9 :���� 
0 a_name   � o      ���� 0 
a_basename   �  ��� � r   = @ � � � m   = >��
�� 
msng � o      ���� 0 a_suffix  ��   v  ��� � L   A F � � J   A E � �  � � � o   A B���� 0 
a_basename   �  ��� � o   B C���� 0 a_suffix  ��  ��   o  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �2,!@abstructObtain a folder path@param an_item (a reference to file/folder) : Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.<!-- end locale -->@resultUnicode text : A path to the folder.    � � � �X ! @ a b s t r u c t  O b t a i n   a   f o l d e r   p a t h  @ p a r a m   a n _ i t e m   ( a   r e f e r e n c e   t o   f i l e / f o l d e r )   :    A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  U n i c o d e   t e x t   :   A   p a t h   t o   t h e   f o l d e r .  �  � � � i     � � � I      �� ����� 0 	folder_of   �  ��� � o      ���� 0 an_item  ��  ��   � L      � � n    
 � � � I    
�������� 0 
folder_ref  ��  ��   � I     �� ���� 0 	make_with   �  ��~ � o    �}�} 0 an_item  �~  �   �  � � � l     �|�{�z�|  �{  �z   �  � � � l      �y � ��y   � " !@group Constructor Methods     � � � � 8 ! @ g r o u p   C o n s t r u c t o r   M e t h o d s   �  � � � l     �x�w�v�x  �w  �v   �  � � � h    %�u ��u *0 posixpathtranslator POSIXPathTranslator � k       � �  � � � j     �t ��t 0 
_delimiter   � m      � � � � �  / �  � � � l     �s�r�q�s  �r  �q   �  � � � i     � � � I      �p ��o�p 0 to_text   �  ��n � o      �m�m 
0 a_file  �n  �o   � L      � � n     � � � 1    �l
�l 
psxp � o     �k�k 
0 a_file   �  � � � l     �j�i�h�j  �i  �h   �  � � � i    
 � � � I      �g ��f�g 0 to_alias   �  ��e � o      �d�d 
0 a_file  �e  �f   � L      � � c      � � � l     ��c�b � 4     �a �
�a 
psxf � o    �`�` 
0 a_file  �c  �b   � m    �_
�_ 
alis �  � � � l     �^�]�\�^  �]  �\   �  � � � i     � � � I      �[ ��Z�[ 0 resolve_disk   �  ��Y � o      �X�X 0 path_elements  �Y  �Z   � k     8 � �  �  � r      n     1    �W
�W 
leng o     �V�V 0 path_elements   o      �U�U 0 n_elems     Z    5�T	 F    

 l   	�S�R ?    	 o    �Q�Q 0 n_elems   m    �P�P �S  �R   l   �O�N =    n    I    �M�L�M 0 item_at   �K m    �J�J �K  �L   o    �I�I 0 path_elements   m     �  V o l u m e s�O  �N   Z    /�H l   �G�F ?     o    �E�E 0 n_elems   m    �D�D �G  �F   r    ) n   ' !  I     '�C"�B�C 0 compose  " #$# m     !�A�A $ %&% m   ! "�@�@ & '�?' m   " #�>
�> boovtrue�?  �B  ! o     �=�= 0 path_elements   o      �<�< 
0 a_disk  �H   r   , /()( m   , -** �++  /) o      �;�; 
0 a_disk  �T  	 r   2 5,-, m   2 3.. �//  /- o      �:�: 
0 a_disk   0�90 L   6 811 o   6 7�8�8 
0 a_disk  �9   � 232 l     �7�6�5�7  �6  �5  3 454 i    676 I      �4�3�2�4 0 hfs_path  �3  �2  7 L     88 c     9:9 l    	;�1�0; 4     	�/<
�/ 
psxf< l   =�.�-= n    >?> 1    �,
�, 
psxp? n   @A@ o    �+�+ 0 	_item_ref  A  f    �.  �-  �1  �0  : m   	 
�*
�* 
utxt5 BCB l     �)�(�'�)  �(  �'  C D�&D i    EFE I      �%�$�#�% 0 as_text  �$  �#  F L     GG n    HIH n   JKJ 1    �"
�" 
psxpK o    �!�! 0 	_item_ref  I  f     �&   � LML l     � ���   �  �  M NON h   & -�P� &0 hfspathtranslator HFSPathTranslatorP k      QQ RSR j     �T� 0 
_delimiter  T m     UU �VV  :S WXW l     ����  �  �  X YZY i    [\[ I      �]�� 0 to_text  ] ^�^ o      �� 
0 a_file  �  �  \ L     __ c     `a` o     �� 
0 a_file  a m    �
� 
utxtZ bcb l     ����  �  �  c ded i    
fgf I      �h�� 0 to_alias  h i�i o      �� 
0 a_file  �  �  g L     jj c     klk o     �� 
0 a_file  l m    �

�
 
alise mnm l     �	���	  �  �  n opo i    qrq I      �s�� 0 resolve_disk  s t�t o      �� 0 path_elements  �  �  r L     uu l    v��v b     wxw n    yzy I    � {���  0 item_at  { |��| m    ���� ��  ��  z o     ���� 0 path_elements  x o    ���� 0 
_delimiter  �  �  p }~} l     ��������  ��  ��  ~ � i    ��� I      �������� 0 hfs_path  ��  ��  � L     �� c     ��� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
utxt� ��� l     ��������  ��  ��  � ���� i    ��� I      �������� 0 as_text  ��  ��  � L     �� c     ��� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
utxt��  O ��� l     ��������  ��  ��  � ��� l      ������  �!@abstruct
Make a PathInfo instance for a file reference.
@description
If a parameter is text and  does not starts with "/", a parameter is HFS path. And HFS path is used for internal processings. Otherwise, a POSIX path is userd for internal processings.

If a path ending with a path delimiter (&quot;/&quot; or &quot;&quot;) is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.@param a_path (alias, furl, POSIX path or HFS path) 
@result script object : A new instance of PathInfo   � ���( ! @ a b s t r u c t 
 M a k e   a   P a t h I n f o   i n s t a n c e   f o r   a   f i l e   r e f e r e n c e . 
 @ d e s c r i p t i o n 
 I f   a   p a r a m e t e r   i s   t e x t   a n d     d o e s   n o t   s t a r t s   w i t h   " / " ,   a   p a r a m e t e r   i s   H F S   p a t h .   A n d   H F S   p a t h   i s   u s e d   f o r   i n t e r n a l   p r o c e s s i n g s .   O t h e r w i s e ,   a   P O S I X   p a t h   i s   u s e r d   f o r   i n t e r n a l   p r o c e s s i n g s . 
 
 I f   a   p a t h   e n d i n g   w i t h   a   p a t h   d e l i m i t e r   ( & q u o t ; / & q u o t ;   o r   & q u o t ; & q u o t ; )   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   i t e m   i s   c o n s i d e r e d   a s   a   f o l d e r   i . e .   ( ( < i s _ f o l d e r > ) )   w i l l   r e t u r n   t r u e .  @ p a r a m   a _ p a t h   ( a l i a s ,   f u r l ,   P O S I X   p a t h   o r   H F S   p a t h )   
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o � ��� i   . 1��� I      ������� 0 	make_with  � ���� o      ���� 
0 a_path  ��  ��  � k     r�� ��� r     ��� n     ��� 1    ��
�� 
pcls� o     ���� 
0 a_path  � o      ���� 0 a_class  � ��� Z    i������ E   ��� J    �� ��� m    ��
�� 
ctxt� ��� m    ��
�� 
utxt� ���� m    	��
�� 
TEXT��  � o    ���� 0 a_class  � Z    _����� C    ��� o    ���� 
0 a_path  � m    �� ���  ~ /� k    E�� ��� r    ��� n   ��� 1    ��
�� 
psxp� l   ������ I   �����
�� .earsffdralis        afdr� m    ��
�� afdrcusr��  ��  ��  � o      ���� 0 hf  � ��� Z     =������ ?     %��� n     #��� 1   ! #��
�� 
leng� o     !���� 
0 a_path  � m   # $���� � r   ( 7��� b   ( 5��� o   ( )���� 0 hf  � l  ) 4������ n   ) 4��� 7  * 4����
�� 
ctxt� m   . 0���� � m   1 3������� o   ) *���� 
0 a_path  ��  ��  � o      ���� 
0 a_path  ��  � r   : =��� o   : ;���� 0 hf  � o      ���� 
0 a_path  � ���� r   > E��� o   > C���� *0 posixpathtranslator POSIXPathTranslator� o      ���� 0 	pathtrans  ��  � ��� C   H K��� o   H I���� 
0 a_path  � m   I J�� ���  /� ���� r   N U��� o   N S���� *0 posixpathtranslator POSIXPathTranslator� o      ���� 0 	pathtrans  ��  � r   X _��� o   X ]���� &0 hfspathtranslator HFSPathTranslator� o      ���� 0 	pathtrans  ��  � r   b i��� o   b g���� *0 posixpathtranslator POSIXPathTranslator� o      ���� 0 	pathtrans  � ���� L   j r�� I   j q������� 0 make_with_pathtrans  � ��� o   k l���� 
0 a_path  � ���� o   l m���� 0 	pathtrans  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �3-!@abstruct
Make a PathInfo instance for a file reference.
@description
If a HFS path ending with ":" is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.@param a_path (alias, furl, text of POSIX path) 
@result script object : A new instance of PathInfo   � ���Z ! @ a b s t r u c t 
 M a k e   a   P a t h I n f o   i n s t a n c e   f o r   a   f i l e   r e f e r e n c e . 
 @ d e s c r i p t i o n 
 I f   a   H F S   p a t h   e n d i n g   w i t h   " : "   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   i t e m   i s   c o n s i d e r e d   a s   a   f o l d e r   i . e .   ( ( < i s _ f o l d e r > ) )   w i l l   r e t u r n   t r u e .  @ p a r a m   a _ p a t h   ( a l i a s ,   f u r l ,   t e x t   o f   P O S I X   p a t h )   
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o � ��� i   2 5��� I      ������� 0 make_with_hfs  � ���� o      ���� 
0 a_path  ��  ��  � L     �� I     ������� 0 make_with_pathtrans  � ��� o    ���� 
0 a_path  � ���� o    ���� &0 hfspathtranslator HFSPathTranslator��  ��  �    l     ��������  ��  ��    l      ����  RL!@abstruct
Make a PathInfo instance for a file reference. A synonym of ((<make_with>))
@description
If a POSIX path ending with "/" is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.@param a_path (alias, furl, text of POSIX path) 
@result script object : A new instance of PathInfo    �� ! @ a b s t r u c t 
 M a k e   a   P a t h I n f o   i n s t a n c e   f o r   a   f i l e   r e f e r e n c e .   A   s y n o n y m   o f   ( ( < m a k e _ w i t h > ) ) 
 @ d e s c r i p t i o n 
 I f   a   P O S I X   p a t h   e n d i n g   w i t h   " / "   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   i t e m   i s   c o n s i d e r e d   a s   a   f o l d e r   i . e .   ( ( < i s _ f o l d e r > ) )   w i l l   r e t u r n   t r u e .  @ p a r a m   a _ p a t h   ( a l i a s ,   f u r l ,   t e x t   o f   P O S I X   p a t h )   
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o   i   6 9	
	 I      ������ 0 make_with_posix   �� o      ���� 
0 a_path  ��  ��  
 L      I     ������ 0 make_with_pathtrans    o    ���� 
0 a_path   �� o    ���� *0 posixpathtranslator POSIXPathTranslator��  ��    l     ��������  ��  ��    i   : = I      ������ 0 make_with_pathtrans    o      ���� 
0 a_path   �� o      ���� 0 	pathtrans  ��  ��   k    [  r       n     !"! 1    ��
�� 
pcls" o     ���� 
0 a_path    o      ���� 0 a_class   #$# r    	%&% m    ��
�� boovfals& o      ���� 0 is_text  $ '(' l  
 
��������  ��  ��  ( )*) Z   
 {+,��-+ E  
 ./. J   
 00 121 m   
 ��
�� 
utxt2 343 m    ��
�� 
TEXT4 5��5 m    ��
�� 
ctxt��  / o    ���� 0 a_class  , r    676 m    ��
�� boovtrue7 o      ���� 0 is_text  ��  - Z    {89:;8 =   <=< o    �� 0 a_class  = m    �~
�~ 
alis9 r     (>?> n    &@A@ I   ! &�}B�|�} 0 to_text  B C�{C o   ! "�z�z 
0 a_path  �{  �|  A o     !�y�y 0 	pathtrans  ? o      �x�x 
0 a_path  : DED E  + 1FGF J   + /HH IJI m   + ,�w
�w 
fss J K�vK m   , -�u
�u 
furl�v  G o   / 0�t�t 0 a_class  E L�sL Q   4 UMNOM r   7 APQP n  7 ?RSR I   8 ?�rT�q�r 0 to_text  T U�pU c   8 ;VWV o   8 9�o�o 
0 a_path  W m   9 :�n
�n 
alis�p  �q  S o   7 8�m�m 0 	pathtrans  Q o      �l�l 
0 a_path  N R      �k�j�i
�k .ascrerr ****      � ****�j  �i  O k   I UXX YZY r   I Q[\[ n  I O]^] I   J O�h_�g�h 0 to_text  _ `�f` o   J K�e�e 
0 a_path  �f  �g  ^ o   I J�d�d 0 	pathtrans  \ o      �c�c 
0 a_path  Z a�ba r   R Ubcb m   R S�a
�a boovtruec o      �`�` 0 is_text  �b  �s  ; k   X {dd efe Q   X rghig r   [ `jkj c   [ ^lml o   [ \�_�_ 
0 a_path  m m   \ ]�^
�^ 
alisk o      �]�] 
0 a_path  h R      �\�[�Z
�\ .ascrerr ****      � ****�[  �Z  i R   h r�Yno
�Y .ascrerr ****      � ****n b   l qpqp l  l or�X�Wr c   l osts o   l m�V�V 0 a_class  t m   m n�U
�U 
utxt�X  �W  q m   o puu �vv x   i s   u n s u p p o r t e d   d a t a   t y p e .   P a t h I n f o   c a n ' t   c o n v e r t   t o   a   p a t h .o �Tw�S
�T 
errnw m   j k�R�R��S  f x�Qx r   s {yzy n  s y{|{ I   t y�P}�O�P 0 to_text  } ~�N~ o   t u�M�M 
0 a_path  �N  �O  | o   s t�L�L 0 	pathtrans  z o      �K�K 
0 a_path  �Q  * � l  | |�J�I�H�J  �I  �H  � ��� r   | ���� n  | ���� I   } ��G��F�G 0 	decompose  � ��E� o   } ~�D�D 
0 a_path  �E  �F  � o   | }�C�C 0 	pathtrans  � o      �B�B 0 path_elements  � ��� r   � ���� n  � ���� I   � ��A��@�A 0 resolve_disk  � ��?� o   � ��>�> 0 path_elements  �?  �@  � o   � ��=�= 0 	pathtrans  � o      �<�< 
0 a_disk  � ��� Z   � ����;�:� H   � ��� o   � ��9�9 0 is_text  � r   � ���� n  � ���� I   � ��8��7�8 0 to_alias  � ��6� o   � ��5�5 
0 a_disk  �6  �7  � o   � ��4�4 0 	pathtrans  � o      �3�3 
0 a_disk  �;  �:  � ��� l  � ��2�1�0�2  �1  �0  � ��� r   � ���� n  � ���� I   � ��/��.�/ 0 item_at  � ��-� m   � ��,�,���-  �.  � o   � ��+�+ 0 path_elements  � o      �*�* 
0 a_name  � ��� Z   �0���)�� =  � ���� o   � ��(�( 
0 a_name  � m   � ��� ���  � k   � ��� ��� r   � ���� m   � ��'
�' boovtrue� o      �&�& 0 folder_flag  � ��� r   � ���� n  � ���� I   � ��%��$�% 0 item_at  � ��#� m   � ��"�"���#  �$  � o   � ��!�! 0 path_elements  � o      � �  
0 a_name  � ��� Z   � ������ =  � ���� n  � ���� 1   � ��
� 
leng� o   � ��� 0 path_elements  � m   � ��� � l  � ����� O   � ���� r   � ���� 1   � ��
� 
desk� o      �� 0 a_folder  � m   � ����                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �   if a_path is disk   � ��� $   i f   a _ p a t h   i s   d i s k�  � l  � ����� k   � ��� ��� r   � ���� n  � ���� I   � ����� 0 compose  � ��� m   � ��� � ��� m   � ������ ��� m   � ��
� boovtrue�  �  � o   � ��� 0 path_elements  � o      �� 0 a_folder  � ��� Z   � ������ H   � ��� o   � ��� 0 is_text  � r   � ���� n  � ���� I   � ����� 0 to_alias  � ��
� o   � ��	�	 0 a_folder  �
  �  � o   � ��� 0 	pathtrans  � o      �� 0 a_folder  �  �  �  �   if a_path is folder   � ��� (   i f   a _ p a t h   i s   f o l d e r�  �)  � k   �0�� ��� r   � ���� m   � ��
� boovfals� o      �� 0 folder_flag  � ��� Z   0����� ?   ��� n  ��� 1  �
� 
leng� o   �� 0 path_elements  � m  � �  � k  
(�� ��� r  
��� n 
��� I  ������� 0 compose  � ��� m  ���� � � � m  ������  �� m  ��
�� boovtrue��  ��  � o  
���� 0 path_elements  � o      ���� 0 a_folder  � �� Z  (���� H   o  ���� 0 is_text   r  $ n "	 I  "��
���� 0 to_alias  
 �� o  ���� 0 a_folder  ��  ��  	 o  ���� 0 	pathtrans   o      ���� 0 a_folder  ��  ��  ��  �  � r  +0 m  +.��
�� 
msng o      ���� 0 a_folder  �  �  l 11��������  ��  ��    r  1J I      ������ 0 
split_name   �� o  23���� 
0 a_name  ��  ��   J        o      ���� 0 
a_basename   �� o      ���� 0 a_suffix  ��   �� L  K[ I  KZ������ 0 make_with_vars    o  LM���� 0 	pathtrans     o  MN���� 
0 a_disk    !"! o  NO���� 0 a_folder  " #$# o  OP���� 
0 a_name  $ %&% o  PQ���� 0 
a_basename  & '(' o  QR���� 0 a_suffix  ( )*) o  RS���� 0 folder_flag  * +��+ o  ST���� 
0 a_path  ��  ��  ��   ,-, l     ��������  ��  ��  - ./. i   > A010 I      ��2���� 0 make_with_opts  2 343 o      ���� 
0 a_path  4 5��5 K      66 ��7���� 0 prefering_posix  7 o      ���� 
0 a_bool  ��  ��  ��  1 k     88 9:9 Z     ;<��=; o     ���� 
0 a_bool  < r    >?> o    	���� *0 posixpathtranslator POSIXPathTranslator? o      ���� 0 	pathtrans  ��  = r    @A@ o    ���� &0 hfspathtranslator HFSPathTranslatorA o      ���� 0 	pathtrans  : B��B L    CC I    ��D���� 0 make_with_pathtrans  D EFE o    ���� 
0 a_path  F G��G o    ���� 0 	pathtrans  ��  ��  ��  / HIH l     ��������  ��  ��  I JKJ i   B ELML I      ��N���� 0 make_with_vars  N OPO o      ���� 0 	pathtrans  P QRQ o      ���� 
0 a_disk  R STS o      ���� 0 a_folder  T UVU o      ���� 
0 a_name  V WXW o      ���� 0 
a_basename  X YZY o      ���� 0 a_suffix  Z [\[ o      ���� 0 folder_flag  \ ]��] o      ���� 
0 a_path  ��  ��  M k     
^^ _`_ h     ��a�� 0 pathinfo PathInfoa k      bb cdc j     ��e
�� 
paree o     ���� 0 	pathtrans  d fgf j   	 ��h�� 	0 _disk  h o   	 ���� 
0 a_disk  g iji j    ��k�� 0 _folder  k o    ���� 0 a_folder  j lml j    ��n�� 	0 _name  n o    ���� 
0 a_name  m opo j    $��q�� 0 	_basename  q o    #���� 0 
a_basename  p rsr j   % +��t�� 0 _path_extension  t o   % *���� 0 a_suffix  s uvu j   , 2��w�� 0 
_is_folder  w o   , 1���� 0 folder_flag  v x��x j   3 9��y�� 0 	_item_ref  y o   3 8���� 
0 a_path  ��  ` z��z L    
{{ o    	���� 0 pathinfo PathInfo��  K |}| l     ��������  ��  ��  } ~~ l      ������  � &  !@group Obtain path information    � ��� @ ! @ g r o u p   O b t a i n   p a t h   i n f o r m a t i o n   ��� l     ��������  ��  ��  � ��� l      ������  � H B!@abstruct 
Obtain a name of the file or the folder.@result text   � ��� � ! @ a b s t r u c t   
 O b t a i n   a   n a m e   o f   t h e   f i l e   o r   t h e   f o l d e r .  @ r e s u l t   t e x t � ��� i   F I��� I      �������� 0 	item_name  ��  ��  � L     �� n    ��� o    ���� 	0 _name  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � E ?!@abstruct 
Obtain a name without path extension.@result text   � ��� ~ ! @ a b s t r u c t   
 O b t a i n   a   n a m e   w i t h o u t   p a t h   e x t e n s i o n .  @ r e s u l t   t e x t � ��� i   J M��� I      �������� 0 basename  ��  ��  � L     �� n    ��� o    ���� 0 	_basename  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � n h!@abstruct 
Obtain a path extension of the file name. The result does not starts with ".".@result text   � ��� � ! @ a b s t r u c t   
 O b t a i n   a   p a t h   e x t e n s i o n   o f   t h e   f i l e   n a m e .   T h e   r e s u l t   d o e s   n o t   s t a r t s   w i t h   " . " .  @ r e s u l t   t e x t � ��� i   N Q��� I      �������� 0 path_extension  ��  ��  � L     �� n    ��� o    ���� 0 _path_extension  �  f     � ��� l     �������  ��  �  � ��� l      �~���~  � j d!@abstruct 
Obtain a file reference to the folder containing the target.@result an alias or a path   � ��� � ! @ a b s t r u c t   
 O b t a i n   a   f i l e   r e f e r e n c e   t o   t h e   f o l d e r   c o n t a i n i n g   t h e   t a r g e t .  @ r e s u l t   a n   a l i a s   o r   a   p a t h � ��� i   R U��� I      �}�|�{�} 0 
folder_ref  �|  �{  � L     �� n    ��� o    �z�z 0 _folder  �  f     � ��� l     �y�x�w�y  �x  �w  � ��� l      �v���v  � � �!@abstruct 
Whether the target is a folder or not.
@description
If given path ends with a path delimiter, true will be returned wtihout checking file system. Therefor a wrong result may be returned.@result boolean   � ���� ! @ a b s t r u c t   
 W h e t h e r   t h e   t a r g e t   i s   a   f o l d e r   o r   n o t . 
 @ d e s c r i p t i o n 
 I f   g i v e n   p a t h   e n d s   w i t h   a   p a t h   d e l i m i t e r ,   t r u e   w i l l   b e   r e t u r n e d   w t i h o u t   c h e c k i n g   f i l e   s y s t e m .   T h e r e f o r   a   w r o n g   r e s u l t   m a y   b e   r e t u r n e d .  @ r e s u l t   b o o l e a n � ��� i   V Y��� I      �u�t�s�u 0 	is_folder  �t  �s  � L     �� n    ��� o    �r�r 0 
_is_folder  �  f     � ��� l     �q�p�o�q  �p  �o  � ��� l      �n���n  � m g!@abstruct 
Obtain an internal file reference which the target contains.@result alias or text of path   � ��� � ! @ a b s t r u c t   
 O b t a i n   a n   i n t e r n a l   f i l e   r e f e r e n c e   w h i c h   t h e   t a r g e t   c o n t a i n s .  @ r e s u l t   a l i a s   o r   t e x t   o f   p a t h � ��� i   Z ]��� I      �m�l�k�m 0 item_ref  �l  �k  � L     �� n    ��� o    �j�j 0 	_item_ref  �  f     � ��� l     �i�h�g�i  �h  �g  � ��� l      �f���f  � � �!@abstruct 
Whether an item exits in the file sysem or not.
@description
If the target exsits, the internal file reference is converted to an alias.@result boolean   � ���J ! @ a b s t r u c t   
 W h e t h e r   a n   i t e m   e x i t s   i n   t h e   f i l e   s y s e m   o r   n o t . 
 @ d e s c r i p t i o n 
 I f   t h e   t a r g e t   e x s i t s ,   t h e   i n t e r n a l   f i l e   r e f e r e n c e   i s   c o n v e r t e d   t o   a n   a l i a s .  @ r e s u l t   b o o l e a n � ��� i   ^ a��� I      �e�d�c�e 0 item_exists  �d  �c  � k     5�� ��� Q     2���b� k    )�� ��� r    ��� I    �a��`�a 0 to_alias  � ��_� I    �^��]�^ 0 to_text  � ��\� n   ��� o    �[�[ 0 	_item_ref  �  f    �\  �]  �_  �`  � n     ��� o    �Z�Z 0 	_item_ref  �  f    � ��� r    &��� I    "�Y��X�Y 0 to_alias  � ��W� I    �V��U�V 0 to_text  � ��T� n   ��� o    �S�S 0 _folder  �  f    �T  �U  �W  �X  � n     ��� o   # %�R�R 0 _folder  �  f   " #�  �Q  L   ' ) m   ' (�P
�P boovtrue�Q  � R      �O�N�M
�O .ascrerr ****      � ****�N  �M  �b  � �L L   3 5 m   3 4�K
�K boovfals�L  �  l     �J�I�H�J  �I  �H    l      �G	�G   � �!@abstruct 
Whether an item exits in the file sysem or not.
@description
The internal file reference will not be changed unlike ((<item_exists>)). @result boolean   	 �

H ! @ a b s t r u c t   
 W h e t h e r   a n   i t e m   e x i t s   i n   t h e   f i l e   s y s e m   o r   n o t . 
 @ d e s c r i p t i o n 
 T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .    @ r e s u l t   b o o l e a n   i   b e I      �F�E�D�F 0 item_exists_without_update  �E  �D   k       Q     �C k      I    �B�A�B 0 to_alias   �@ I    �?�>�? 0 to_text   �= n    o    �<�< 0 	_item_ref    f    �=  �>  �@  �A   �; L     m    �:
�: boovtrue�;   R      �9�8�7
�9 .ascrerr ****      � ****�8  �7  �C   �6 L       m    �5
�5 boovfals�6   !"! l     �4�3�2�4  �3  �2  " #$# l      �1%&�1  % n h!@abstruct 
If ((<child>)) and ((<change_folder>)) prefer posix path, true is returned.
@result boolean   & �'' � ! @ a b s t r u c t   
 I f   ( ( < c h i l d > ) )   a n d   ( ( < c h a n g e _ f o l d e r > ) )   p r e f e r   p o s i x   p a t h ,   t r u e   i s   r e t u r n e d . 
 @ r e s u l t   b o o l e a n $ ()( i   f i*+* I      �0�/�.�0 0 is_posix  �/  �.  + L     ,, =    -.- n    /0/ o    �-�- 0 
_delimiter  0  f     . m    11 �22  /) 343 l     �,�+�*�,  �+  �*  4 565 l      �)78�)  7 ( "!@group Converting reference form    8 �99 D ! @ g r o u p   C o n v e r t i n g   r e f e r e n c e   f o r m  6 :;: l     �(�'�&�(  �'  �&  ; <=< l      �%>?�%  > � ~!@abstruct Obtain a file reference as alias.
@description
If failed to coerce to an alias, an error will raise.@result alias   ? �@@ � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   a l i a s . 
 @ d e s c r i p t i o n 
 I f   f a i l e d   t o   c o e r c e   t o   a n   a l i a s ,   a n   e r r o r   w i l l   r a i s e .  @ r e s u l t   a l i a s = ABA i   j mCDC I      �$�#�"�$ 0 as_alias  �#  �"  D k     7EE FGF Z     1HI�!� H >    JKJ n     LML 1    �
� 
pclsM n    NON o    �� 0 	_item_ref  O  f     K m    �
� 
alisI k   
 -PP QRQ r   
 STS I   
 �U�� 0 to_alias  U V�V I    �W�� 0 to_text  W X�X n   YZY o    �� 0 	_item_ref  Z  f    �  �  �  �  T n     [\[ o    �� 0 	_item_ref  \  f    R ]�] r    -^_^ I    )�`�� 0 to_alias  ` a�a I    %�b�� 0 to_text  b c�c n   !ded o    !�� 0 _folder  e  f    �  �  �  �  _ n     fgf o   * ,�� 0 _folder  g  f   ) *�  �!  �   G h�h L   2 7ii n  2 6jkj o   3 5�
�
 0 	_item_ref  k  f   2 3�  B lml l     �	���	  �  �  m non l      �pq�  p G A!@abstruct Obtain a file reference as File URL.@result File URL   q �rr � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   F i l e   U R L .  @ r e s u l t   F i l e   U R L o sts i   n quvu I      ���� 0 as_furl  �  �  v L     ww c     xyx n    z{z o    �� 0 	_item_ref  {  f     y m    �
� 
furlt |}| l     � �����   ��  ��  } ~~ l      ������  � J D!@abstruct Obtain a file reference as POSIX path form.@result text   � ��� � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   P O S I X   p a t h   f o r m .  @ r e s u l t   t e x t  ��� i   r u��� I      �������� 0 
posix_path  ��  ��  � L     �� n    ��� n   ��� 1    ��
�� 
psxp� o    ���� 0 	_item_ref  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � M G!@abstruct Obtain POSIX path which does not end with "/".@result text   � ��� � ! @ a b s t r u c t   O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " .  @ r e s u l t   t e x t � ��� i   v y��� I      �������� 0 normalized_posix_path  ��  ��  � k     "�� ��� r     ��� I     �������� 0 
posix_path  ��  ��  � o      ���� 
0 a_path  � ��� Z    ������� D    ��� o    	���� 
0 a_path  � m   	 
�� ���  /� r    ��� n    ��� 7   ����
�� 
ctxt� m    ���� � m    ������� o    ���� 
0 a_path  � o      ���� 
0 a_path  ��  ��  � ���� L     "�� o     !���� 
0 a_path  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � [ U!@syntax hfs_path()
@abstruct Obtain a file reference as HFS path form.@result text   � ��� � ! @ s y n t a x   h f s _ p a t h ( ) 
 @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   H F S   p a t h   f o r m .  @ r e s u l t   t e x t � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@syntax as_text()
@abstruct Obtain a path text.@result text of HFS path or POSX path. The path form follows the path form passed to ((<make_with>)).   � ���. ! @ s y n t a x   a s _ t e x t ( ) 
 @ a b s t r u c t   O b t a i n   a   p a t h   t e x t .  @ r e s u l t   t e x t   o f   H F S   p a t h   o r   P O S X   p a t h .   T h e   p a t h   f o r m   f o l l o w s   t h e   p a t h   f o r m   p a s s e d   t o   ( ( < m a k e _ w i t h > ) ) . � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � 6 0!@group Making a new instance from the instance    � ��� ` ! @ g r o u p   M a k i n g   a   n e w   i n s t a n c e   f r o m   t h e   i n s t a n c e  � ��� l     ��������  ��  ��  � ��� l      ������  �  y!@abstruct 
Obtain an instance of PathInfo referencing the folder containing the target.@result an instance of PathInfo   � ��� � ! @ a b s t r u c t   
 O b t a i n   a n   i n s t a n c e   o f   P a t h I n f o   r e f e r e n c i n g   t h e   f o l d e r   c o n t a i n i n g   t h e   t a r g e t .  @ r e s u l t   a n   i n s t a n c e   o f   P a t h I n f o � ��� i   z }��� I      �������� 0 parent_folder  ��  ��  � L     �� I     ������� 0 make_with_opts  � ��� I    �������� 0 
folder_ref  ��  ��  � ���� K    �� ������� 0 prefering_posix  � I    �������� 0 is_posix  ��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
Make a new PathInfo changing the item name.
@param a_name (text) : An item name@result script object : A new instance of PathInfo   � ��� ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   i t e m   n a m e . 
 @ p a r a m   a _ n a m e   ( t e x t )   :   A n   i t e m   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o � ��� i   ~ ���� I      ������� 0 change_name  � ���� o      ���� 
0 a_name  ��  ��  � k     =�� ��� r     ��� I      ������� 0 
split_name  � ���� o    ���� 
0 a_name  ��  ��  � J      �� ��� o      ���� 0 
a_basename  � ���� o      ���� 0 a_suffix  ��  � ���� O    =��� k    <�� ��� r    #��� o    ���� 
0 a_name  � n     ��� o     "���� 	0 _name  �  g     � ��� r   $ )��� o   $ %���� 0 
a_basename  � n     ��� o   & (���� 0 	_basename  �  g   % &� ��� r   * /� � o   * +���� 0 a_suffix    n      o   , .���� 0 _path_extension    g   + ,�  r   0 9 I   0 5�������� 0 
build_path  ��  ��   n      o   6 8���� 0 	_item_ref    g   5 6 	��	 L   : <

  g   : ;��  � I    �������� 	0 clone  ��  ��  ��  �  l     ��������  ��  ��    l      ����   � �!@abstruct
Make a new PathInfo changing the path extension
@param a_text (text) : A path extension. It should not start with &quot;.&quot;.@result script object : a new instance of PathInfo    �~ ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   p a t h   e x t e n s i o n 
 @ p a r a m   a _ t e x t   ( t e x t )   :   A   p a t h   e x t e n s i o n .   I t   s h o u l d   n o t   s t a r t   w i t h   & q u o t ; . & q u o t ; .  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   P a t h I n f o   i   � � I      ������ 0 change_path_extension   �� o      ���� 
0 a_text  ��  ��   O     7 k    6  r     o    	���� 
0 a_text   n       o   
 ���� 0 _path_extension     g   	 
 !"! Z    )#$��%# =   &'& o    ���� 
0 a_text  ' m    ��
�� 
msng$ r    ()( n   *+* o    ���� 0 	_basename  +  g    ) n     ,-, o    ���� 	0 _name  -  g    ��  % r    )./. b    %010 b    #232 n   !454 o    !���� 0 	_basename  5  g    3 m   ! "66 �77  .1 o   # $���� 
0 a_text  / n     898 o   & (���� 	0 _name  9  g   % &" :;: r   * 3<=< I   * /�������� 0 
build_path  ��  ��  = n     >?> o   0 2���� 0 	_item_ref  ?  g   / 0; @��@ L   4 6AA  g   4 5��   I     �������� 	0 clone  ��  ��   BCB l     ��������  ��  ��  C DED l      ��FG��  F��!@abstruct
Make a new PathInfo changing the folder.
@description
The path form for a parameter must keep consistency with a path passed to the constructor method. If the target was constucted by ((<make_with_posix>)). The path form must be POSIX. If the target was constructed by ((<make_with_hfs>)), the path form must be HFS.
@param a_folder (alias, furl, POSIX path or HFS path) : A reference to a folder@result script object : A new instance of PathInfo   G �HH� ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   f o l d e r . 
 @ d e s c r i p t i o n 
 T h e   p a t h   f o r m   f o r   a   p a r a m e t e r   m u s t   k e e p   c o n s i s t e n c y   w i t h   a   p a t h   p a s s e d   t o   t h e   c o n s t r u c t o r   m e t h o d .   I f   t h e   t a r g e t   w a s   c o n s t u c t e d   b y   ( ( < m a k e _ w i t h _ p o s i x > ) ) .   T h e   p a t h   f o r m   m u s t   b e   P O S I X .   I f   t h e   t a r g e t   w a s   c o n s t r u c t e d   b y   ( ( < m a k e _ w i t h _ h f s > ) ) ,   t h e   p a t h   f o r m   m u s t   b e   H F S . 
 @ p a r a m   a _ f o l d e r   ( a l i a s ,   f u r l ,   P O S I X   p a t h   o r   H F S   p a t h )   :   A   r e f e r e n c e   t o   a   f o l d e r  @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o E IJI i   � �KLK I      ��M���� 0 change_folder  M N��N o      ���� 0 a_folder  ��  ��  L k     HOO PQP Z     &RS����R F     TUT l    	V��~V E    	WXW J     YY Z[Z m     �}
�} 
ctxt[ \]\ m    �|
�| 
utxt] ^�{^ m    �z
�z 
TEXT�{  X n    _`_ 1    �y
�y 
pcls` o    �x�x 0 a_folder  �  �~  U l   a�w�va H    bb D    cdc o    �u�u 0 a_folder  d I    �t�s�r�t 0 	delimiter  �s  �r  �w  �v  S r    "efe b     ghg o    �q�q 0 a_folder  h I    �p�o�n�p 0 	delimiter  �o  �n  f o      �m�m 0 a_folder  ��  ��  Q i�li O   ' Hjkj k   / Gll mnm r   / 4opo o   / 0�k�k 0 a_folder  p n     qrq o   1 3�j�j 0 _folder  r  g   0 1n sts r   5 :uvu m   5 6�i
�i 
msngv n     wxw o   7 9�h�h 	0 _disk  x  g   6 7t yzy r   ; D{|{ I   ; @�g�f�e�g 0 
build_path  �f  �e  | n     }~} o   A C�d�d 0 	_item_ref  ~  g   @ Az �c L   E G��  g   E F�c  k I   ' ,�b�a�`�b 	0 clone  �a  �`  �l  J ��� l     �_�^�]�_  �^  �]  � ��� l      �\���\  ���!@abstruct
Make a new PathInfo appending a sub path.
@description
The path form for a parameter must keep consistency with a path passed to the constructor method. If the target was constucted by ((<make_with_posix>)). The path form must be POSIX. If the target was constructed by ((<make_with_hfs>)), the path form must be HFS.
@param subpath (text)  : A relative path from the target.@result script object : a new instance of PathInfo   � ���l ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   a p p e n d i n g   a   s u b   p a t h . 
 @ d e s c r i p t i o n 
 T h e   p a t h   f o r m   f o r   a   p a r a m e t e r   m u s t   k e e p   c o n s i s t e n c y   w i t h   a   p a t h   p a s s e d   t o   t h e   c o n s t r u c t o r   m e t h o d .   I f   t h e   t a r g e t   w a s   c o n s t u c t e d   b y   ( ( < m a k e _ w i t h _ p o s i x > ) ) .   T h e   p a t h   f o r m   m u s t   b e   P O S I X .   I f   t h e   t a r g e t   w a s   c o n s t r u c t e d   b y   ( ( < m a k e _ w i t h _ h f s > ) ) ,   t h e   p a t h   f o r m   m u s t   b e   H F S . 
 @ p a r a m   s u b p a t h   ( t e x t )     :   A   r e l a t i v e   p a t h   f r o m   t h e   t a r g e t .  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   P a t h I n f o � ��� i   � ���� I      �[��Z�[ 	0 child  � ��Y� o      �X�X 0 subpath  �Y  �Z  � k     2�� ��� r     ��� I     �W�V�U�W 0 as_text  �V  �U  � o      �T�T 
0 a_path  � ��� Z     ���S�R� H    �� D    ��� o    	�Q�Q 
0 a_path  � I   	 �P�O�N�P 0 	delimiter  �O  �N  � r    ��� b    ��� o    �M�M 
0 a_path  � I    �L�K�J�L 0 	delimiter  �K  �J  � o      �I�I 
0 a_path  �S  �R  � ��H� L   ! 2�� I   ! 1�G��F�G 0 make_with_opts  � ��� b   " %��� o   " #�E�E 
0 a_path  � o   # $�D�D 0 subpath  � ��C� K   % -�� �B��A�B 0 prefering_posix  � I   & +�@�?�>�@ 0 is_posix  �?  �>  �A  �C  �F  �H  � ��� l     �=�<�;�=  �<  �;  � ��� i   � ���� I      �:�9�8�: 	0 clone  �9  �8  � L     �� I     �7��6�7 0 make_with_vars  � ��� 1    �5
�5 
pare� ��� n   ��� o    �4�4 	0 _disk  �  f    � ��� n   
��� o    
�3�3 0 _folder  �  f    � ��� n  
 ��� o    �2�2 	0 _name  �  f   
 � ��� n   ��� o    �1�1 0 	_basename  �  f    � ��� n   ��� o    �0�0 0 _path_extension  �  f    � ��� n   ��� o    �/�/ 0 
_is_folder  �  f    � ��.� n   ��� o    �-�- 0 	_item_ref  �  f    �.  �6  � ��� l     �,�+�*�,  �+  �*  � ��� l      �)���)  �  	 private    � ���    p r i v a t e  � ��� i   � ���� I      �(�'�&�( 0 
build_path  �'  �&  � k     @�� ��� Z     ���%�� =    ��� n    ��� o    �$�$ 0 _path_extension  �  f     � m    �#
�# 
msng� r    ��� n   ��� o   	 �"�" 	0 _name  �  f    	� o      �!�! 
0 a_name  �%  � r    ��� l   �� �� b    ��� b    ��� n   ��� o    �� 0 	_basename  �  f    � m    �� ���  .� n   ��� o    �� 0 _path_extension  �  f    �   �  � o      �� 
0 a_name  � ��� Z    0����� n    ��� o    �� 0 
_is_folder  �  f    � r   # ,��� b   # *��� o   # $�� 
0 a_name  � I   $ )���� 0 	delimiter  �  �  � o      �� 
0 a_name  �  �  � ��� r   1 ;� � I   1 9��� 0 to_text   � n  2 5 o   3 5�� 0 _folder    f   2 3�  �    o      �� 0 folder_path  � � L   < @ b   < ? o   < =�� 0 folder_path   o   = >�� 
0 a_name  �  � 	
	 l     ��
�	�  �
  �	  
  l      ��      methods for PathElements     � 4   m e t h o d s   f o r   P a t h E l e m e n t s    i   � � I      ��� 0 item_at   � o      �� 0 n  �  �   L      n     n    4    �
� 
cobj o    �� 0 n   o    �� 0 	_contents    f       l     � �����   ��  ��    i   � � !  I      ��"���� 0 compose  " #$# o      ���� 0 n1  $ %&% o      ���� 0 n2  & '��' o      ���� 0 folder_flag  ��  ��  ! k     :(( )*) r     +,+ n    -.- 1    ��
�� 
txdl. 1     ��
�� 
ascr, o      ���� 0 tid  * /0/ r    121 J    33 4��4 n   	565 o    	���� 0 
_delimiter  6  f    ��  2 n     787 1    ��
�� 
txdl8 1    ��
�� 
ascr0 9:9 r    !;<; c    =>= l   ?����? n    @A@ 7   ��BC
�� 
cobjB o    ���� 0 n1  C o    ���� 0 n2  A n   DED o    ���� 0 	_contents  E  f    ��  ��  > m    ��
�� 
utxt< o      ���� 0 a_result  : FGF Z   " 1HI����H o   " #���� 0 folder_flag  I r   & -JKJ b   & +LML o   & '���� 0 a_result  M n  ' *NON o   ( *���� 0 
_delimiter  O  f   ' (K o      ���� 0 a_result  ��  ��  G PQP r   2 7RSR o   2 3���� 0 tid  S n     TUT 1   4 6��
�� 
txdlU 1   3 4��
�� 
ascrQ V��V L   8 :WW o   8 9���� 0 a_result  ��   XYX l     ��������  ��  ��  Y Z[Z i   � �\]\ I      ��^���� 0 make_path_elements  ^ _��_ o      ���� 
0 a_list  ��  ��  ] k     `` aba r     cdc  f     d o      ���� 0 a_parent  b e��e h    ��f�� 0 pathelements pathElementsf k      gg hih j     ��j
�� 
parej o     ���� 0 a_parent  i klk j   	 ��m�� 0 	_contents  m o   	 ���� 
0 a_list  l n��n j    ��o
�� 
lengo n    pqp 1    ��
�� 
lengq o    ���� 
0 a_list  ��  ��  [ rsr l     ��������  ��  ��  s tut i   � �vwv I      ��x���� 0 	decompose  x y��y o      ���� 
0 a_path  ��  ��  w k     !zz {|{ r     }~} n    � 1    ��
�� 
txdl� 1     ��
�� 
ascr~ o      ���� 0 tid  | ��� r    ��� n   	��� o    	���� 0 
_delimiter  �  f    � n     ��� 1   
 ��
�� 
txdl� 1   	 
��
�� 
ascr� ��� r    ��� n    ��� 2    ��
�� 
citm� o    ���� 
0 a_path  � o      ���� 
0 a_list  � ��� r    ��� o    ���� 0 tid  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L    !�� I     ������� 0 make_path_elements  � ���� o    ���� 
0 a_list  ��  ��  ��  u ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 	delimiter  ��  ��  � L     �� n    ��� o    ���� 0 
_delimiter  �  f     � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 set_name  � ���� o      ���� 
0 a_name  ��  ��  � k     :�� ��� r     ��� I      ������� 0 
split_name  � ���� o    ���� 
0 a_name  ��  ��  � J      �� ��� n     ��� o    ���� 0 	_basename  �  f    � ���� n     ��� o    ���� 0 _path_extension  �  f    ��  � ��� r    ��� o    ���� 
0 a_name  � n     ��� o    ���� 	0 _name  �  f    � ��� Z     7������� >    '��� n     %��� 1   # %��
�� 
pcls� n    #��� o   ! #���� 0 	_item_ref  �  f     !� m   % &��
�� 
alis� r   * 3��� I   * /�������� 0 
build_path  ��  ��  � n     ��� o   0 2���� 0 	_item_ref  �  g   / 0��  ��  � ���� L   8 :��  f   8 9��  � ��� l     ��������  ��  ��  � ��� l      ������  �!@group Error Numbers and Error Messages
* number : 980
	* message : Unknown data type. PathInfo can't convert to a path.	* Raise when a parameter passed to ((<make_with>)), ((<make_with_hfs>)), ((<make_with_posix>)),((<change_folder>)) can not be treated as a file reference.   � ���, ! @ g r o u p   E r r o r   N u m b e r s   a n d   E r r o r   M e s s a g e s 
 *   n u m b e r   :   9 8 0 
 	 *   m e s s a g e   :   U n k n o w n   d a t a   t y p e .   P a t h I n f o   c a n ' t   c o n v e r t   t o   a   p a t h .  	 *   R a i s e   w h e n   a   p a r a m e t e r   p a s s e d   t o   ( ( < m a k e _ w i t h > ) ) ,   ( ( < m a k e _ w i t h _ h f s > ) ) ,   ( ( < m a k e _ w i t h _ p o s i x > ) ) , ( ( < c h a n g e _ f o l d e r > ) )   c a n   n o t   b e   t r e a t e d   a s   a   f i l e   r e f e r e n c e . � ��� l     ��������  ��  ��  � ��� i   � ���� I     ������
�� .aevtoappnull  �   � ****��  ��  � k     �� ��� l     ������  �  return debug()   � ���  r e t u r n   d e b u g ( )� ���� Q     ���� I   ����
�� .HBsushHBTEXT    ��� file� l   ������ I   �����
�� .earsffdralis        afdr�  f    ��  ��  ��  � �����
�� 
rcIP� m   	 
�
� boovtrue��  � R      �~��
�~ .ascrerr ****      � ****� o      �}�} 0 msg  � �|��{
�| 
errn� o      �z�z 	0 errno  �{  � I   �y��x
�y .sysodisAaleR        TEXT� l   ��w�v� b    ��� b    ��� o    �u�u 0 msg  � o    �t
�t 
ret � o    �s�s 	0 errno  �w  �v  �x  ��  � ��� l     �r�q�p�r  �q  �p  � ��� i   � ���� I      �o�n�m�o 	0 debug  �n  �m  � k     B�� ��� l     �l���l  � ! boot (module loader) for me   � ��� 6 b o o t   ( m o d u l e   l o a d e r )   f o r   m e�    l     �k�j�i�k  �j  �i    l     �h�h   i cset a_path to "/Users/tkurita/Dev/Projects/TeX Tools for mi/�T���v��/insert-file/sample-figure.pdf"    � � s e t   a _ p a t h   t o   " / U s e r s / t k u r i t a / D e v / P r o j e c t s / T e X   T o o l s   f o r   m i /0�0�0�0� / i n s e r t - f i l e / s a m p l e - f i g u r e . p d f "  l     �g	
�g  	 ` Zset a_path to "/Volumes/Users/tkurita/Dev/Projects/TeX Tools for mi/�T���v��/insert-file/"   
 � � s e t   a _ p a t h   t o   " / V o l u m e s / U s e r s / t k u r i t a / D e v / P r o j e c t s / T e X   T o o l s   f o r   m i /0�0�0�0� / i n s e r t - f i l e / "  l     �f�f    set a_path to path to me    � 0 s e t   a _ p a t h   t o   p a t h   t o   m e  l     �e�e   M Gset a_path to alias "Macintosh HD:Users:tkurita:Desktop:Untitled2.scpt"    � � s e t   a _ p a t h   t o   a l i a s   " M a c i n t o s h   H D : U s e r s : t k u r i t a : D e s k t o p : U n t i t l e d 2 . s c p t "  l     �d�d   % set a_path to "HelpSearch.scpt"    � > s e t   a _ p a t h   t o   " H e l p S e a r c h . s c p t "  l     �c�c   + %set a_result to do(POSIX file a_path)    � J s e t   a _ r e s u l t   t o   d o ( P O S I X   f i l e   a _ p a t h )  !  l     �b"#�b  "  class of name of a_result   # �$$ 2 c l a s s   o f   n a m e   o f   a _ r e s u l t! %&% l     �a'(�a  ' > 8set a_path to choose file name default name "index.html"   ( �)) p s e t   a _ p a t h   t o   c h o o s e   f i l e   n a m e   d e f a u l t   n a m e   " i n d e x . h t m l "& *+* l     �`,-�`  ,  prefer_posix(false)   - �.. & p r e f e r _ p o s i x ( f a l s e )+ /0/ r     121 m     33 �44 | M a c i n t o s h   H D : U s e r s : t k u r i t a : L i b r a r y : P r e f e r e n c e s : I n s e r t S i g n a t u r e2 o      �_�_ 
0 a_path  0 565 l   �^78�^  7 > 8set pathelems to POSIXPathTranslator's decompose(a_path)   8 �99 p s e t   p a t h e l e m s   t o   P O S I X P a t h T r a n s l a t o r ' s   d e c o m p o s e ( a _ p a t h )6 :;: l   �]<=�]  <  return pathelems   = �>>   r e t u r n   p a t h e l e m s; ?@? l   �\AB�\  A &  return pathelems's compose(true)   B �CC @ r e t u r n   p a t h e l e m s ' s   c o m p o s e ( t r u e )@ DED r    FGF I    
�[H�Z�[ 0 	make_with  H I�YI o    �X�X 
0 a_path  �Y  �Z  G o      �W�W 0 a_result  E JKJ L    LL n   MNM I    �V�U�T�V 0 
posix_path  �U  �T  N n   OPO I    �SQ�R�S 0 change_path_extension  Q R�QR m    �P
�P 
msng�Q  �R  P o    �O�O 0 a_result  K STS L    UU n   VWV I    �N�M�L�N 0 
posix_path  �M  �L  W o    �K�K 0 a_result  T XYX l     �JZ[�J  Z + %set a_result to make_with_hfs(a_path)   [ �\\ J s e t   a _ r e s u l t   t o   m a k e _ w i t h _ h f s ( a _ p a t h )Y ]^] L     &__ n    %`a` I   ! %�I�H�G�I 0 as_text  �H  �G  a o     !�F�F 0 a_result  ^ bcb I  ' 0�Ed�D
�E .ascrcmnt****      � ****d n  ' ,efe I   ( ,�C�B�A�C 0 
build_path  �B  �A  f o   ' (�@�@ 0 a_result  �D  c ghg l  1 1�?ij�?  i  return a_result's clone()   j �kk 2 r e t u r n   a _ r e s u l t ' s   c l o n e ( )h lml L   1 8nn n  1 7opo I   2 7�>q�=�> 0 change_path_extension  q r�<r m   2 3ss �tt  t x t�<  �=  p o   1 2�;�; 0 a_result  m uvu L   9 ?ww n  9 >xyx I   : >�:�9�8�: 	0 clone  �9  �8  y o   9 :�7�7 0 a_result  v z�6z L   @ B{{ o   @ A�5�5 0 a_result  �6  � |}| l     �4�3�2�4  �3  �2  } ~�1~ l     �0�/�.�0  �/  �.  �1       .�-  �������������������������������������������-   ,�,�+�*�)�(�'�&�%�$�#�"�!� ����������������������
�	��������
�, 
pnam
�+ 
vers�* 0 name_of  �) 0 basename_of  �( 0 path_extension_of  �' 0 	suffix_of  �& 0 
split_name  �% 0 	folder_of  �$ *0 posixpathtranslator POSIXPathTranslator�# &0 hfspathtranslator HFSPathTranslator�" 0 	make_with  �! 0 make_with_hfs  �  0 make_with_posix  � 0 make_with_pathtrans  � 0 make_with_opts  � 0 make_with_vars  � 0 	item_name  � 0 basename  � 0 path_extension  � 0 
folder_ref  � 0 	is_folder  � 0 item_ref  � 0 item_exists  � 0 item_exists_without_update  � 0 is_posix  � 0 as_alias  � 0 as_furl  � 0 
posix_path  � 0 normalized_posix_path  � 0 parent_folder  � 0 change_name  � 0 change_path_extension  � 0 change_folder  � 	0 child  �
 	0 clone  �	 0 
build_path  � 0 item_at  � 0 compose  � 0 make_path_elements  � 0 	decompose  � 0 	delimiter  � 0 set_name  
� .aevtoappnull  �   � ****� 	0 debug  � �  .���������  0 name_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ������ 0 	make_with  �� 0 	item_name  �� *�k+  j+ � �� @���������� 0 basename_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ������ 0 	make_with  �� 0 basename  �� *�k+  j+ � �� R���������� 0 path_extension_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ������ 0 	make_with  �� 0 path_extension  �� *�el+  j+ � �� a���������� 0 	suffix_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ���� 0 path_extension_of  �� *�k+  � �� q���������� 0 
split_name  �� ����� �  ���� 
0 a_name  ��  � ������������ 
0 a_name  �� 0 tid  �� 0 name_elements  �� 0 a_suffix  �� 0 
a_basename  � 	 |���� �����������
�� 
ascr
�� 
txdl
�� 
citm
�� 
cobj����
�� 
utxt
�� 
msng�� G�� 5��,E�O�kv��,FO��-E�O��i/E�O�[�\[Zk\Z�2�&E�O���,FY 	�E�O�E�O��lv� �� ����������� 0 	folder_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ������ 0 	make_with  �� 0 
folder_ref  �� *�k+  j+ � �� �  ��� *0 posixpathtranslator POSIXPathTranslator�  � ������� �������������� 0 
_delimiter  �� 0 to_text  �� 0 to_alias  �� 0 resolve_disk  �� 0 hfs_path  �� 0 as_text  � �� ����������� 0 to_text  �� ����� �  ���� 
0 a_file  ��  � ���� 
0 a_file  � ��
�� 
psxp�� ��,E� �� ����������� 0 to_alias  �� ����� �  ���� 
0 a_file  ��  � ���� 
0 a_file  � ����
�� 
psxf
�� 
alis�� *�/�&� �� ����������� 0 resolve_disk  �� ����� �  ���� 0 path_elements  ��  � �������� 0 path_elements  �� 0 n_elems  �� 
0 a_disk  � ��������*.
�� 
leng�� 0 item_at  
�� 
bool�� 0 compose  �� 9��,E�O�k	 �lk+ � �& �l �kmem+ E�Y �E�Y �E�O�� ��7���������� 0 hfs_path  ��  ��  �  � ��������
�� 
psxf�� 0 	_item_ref  
�� 
psxp
�� 
utxt�� *�)�,�,E/�&� ��F���������� 0 as_text  ��  ��  �  � ������ 0 	_item_ref  
�� 
psxp�� )�,�,E� ��P  ��� &0 hfspathtranslator HFSPathTranslator�  �U������ �������������� 0 
_delimiter  �� 0 to_text  �� 0 to_alias  �� 0 resolve_disk  �� 0 hfs_path  �� 0 as_text  � ��\���������� 0 to_text  �� ����� �  ���� 
0 a_file  ��  � ���� 
0 a_file  � ��
�� 
utxt�� ��&� ��g��~���}�� 0 to_alias  � �|��| �  �{�{ 
0 a_file  �~  � �z�z 
0 a_file  � �y
�y 
alis�} ��&� �xr�w�v���u�x 0 resolve_disk  �w �t��t �  �s�s 0 path_elements  �v  � �r�r 0 path_elements  � �q�q 0 item_at  �u �kk+  b   %� �p��o�n���m�p 0 hfs_path  �o  �n  �  � �l�k�l 0 	_item_ref  
�k 
utxt�m )�,�&� �j��i�h���g�j 0 as_text  �i  �h  �  � �f�e�f 0 	_item_ref  
�e 
utxt�g )�,�&� �d��c�b���a�d 0 	make_with  �c �`��` �  �_�_ 
0 a_path  �b  � �^�]�\�[�^ 
0 a_path  �] 0 a_class  �\ 0 hf  �[ 0 	pathtrans  � �Z�Y�X�W��V�U�T�S��R
�Z 
pcls
�Y 
ctxt
�X 
utxt
�W 
TEXT
�V afdrcusr
�U .earsffdralis        afdr
�T 
psxp
�S 
leng�R 0 make_with_pathtrans  �a s��,E�O���mv� T�� 4�j �,E�O��,l ��[�\[Zm\Zi2%E�Y �E�Ob  E�Y �� b  E�Y 	b  	E�Y 	b  E�O*��l+ 
� �Q��P�O���N�Q 0 make_with_hfs  �P �M��M �  �L�L 
0 a_path  �O  � �K�K 
0 a_path  � �J�J 0 make_with_pathtrans  �N *�b  	l+  � �I
�H�G���F�I 0 make_with_posix  �H �E��E �  �D�D 
0 a_path  �G  � �C�C 
0 a_path  � �B�B 0 make_with_pathtrans  �F *�b  l+  � �A�@�?���>�A 0 make_with_pathtrans  �@ �=��= �  �<�;�< 
0 a_path  �; 0 	pathtrans  �?  � �:�9�8�7�6�5�4�3�2�1�0�: 
0 a_path  �9 0 	pathtrans  �8 0 a_class  �7 0 is_text  �6 0 path_elements  �5 
0 a_disk  �4 
0 a_name  �3 0 folder_flag  �2 0 a_folder  �1 0 
a_basename  �0 0 a_suffix  � �/�.�-�,�+�*�)�(�'�&�%�$u�#�"�!� ������������
�/ 
pcls
�. 
utxt
�- 
TEXT
�, 
ctxt
�+ 
alis�* 0 to_text  
�) 
fss 
�( 
furl�'  �&  
�% 
errn�$��# 0 	decompose  �" 0 resolve_disk  �! 0 to_alias  �  0 item_at  ���
� 
leng
� 
desk���� 0 compose  
� 
msng� 0 
split_name  
� 
cobj� � 0 make_with_vars  �>\��,E�OfE�O���mv� eE�Y c��  ��k+ E�Y R��lv� & ���&k+ E�W X  	��k+ E�OeE�Y % 
��&E�W X  	)��l��&�%O��k+ E�O��k+ E�O��k+ E�O� ��k+ E�Y hO�ik+ E�O�a   MeE�O�a k+ E�O�a ,l  a  	*a ,E�UY  �ka em+ E�O� ��k+ E�Y hY 6fE�O�a ,k #�ka em+ E�O� ��k+ E�Y hY a E�O*�k+ E[a k/E�Z[a l/E�ZO*��������a + � �1������ 0 make_with_opts  � ��� �  ��� 
0 a_path  � ���� 0 prefering_posix  � 
0 a_bool  �  �  � ���
� 
0 a_path  � 
0 a_bool  �
 0 	pathtrans  � �	�	 0 make_with_pathtrans  � � b  E�Y 	b  	E�O*��l+  � �M������ 0 make_with_vars  � ��� �  ���� ��������� 0 	pathtrans  � 
0 a_disk  � 0 a_folder  �  
0 a_name  �� 0 
a_basename  �� 0 a_suffix  �� 0 folder_flag  �� 
0 a_path  �  � 	�������������������� 0 	pathtrans  �� 
0 a_disk  �� 0 a_folder  �� 
0 a_name  �� 0 
a_basename  �� 0 a_suffix  �� 0 folder_flag  �� 
0 a_path  �� 0 pathinfo PathInfo� ��a��� 0 pathinfo PathInfo� �����������
�� .ascrinit****      � ****� k     9�� c�� f�� i�� l�� o   r u x����  ��  ��  � ����������������
�� 
pare�� 	0 _disk  �� 0 _folder  �� 	0 _name  �� 0 	_basename  �� 0 _path_extension  �� 0 
_is_folder  �� 0 	_item_ref  � ����������������
�� 
pare�� 	0 _disk  �� 0 _folder  �� 	0 _name  �� 0 	_basename  �� 0 _path_extension  �� 0 
_is_folder  �� 0 	_item_ref  �� :b   N  Ob  �Ob  �Ob  �Ob  �Ob  �Ob  �Ob  �� ��K S�O�� ����������� 0 	item_name  ��  ��     ���� 	0 _name  �� )�,E� ����������� 0 basename  ��  ��     ���� 0 	_basename  �� )�,E� ����������� 0 path_extension  ��  ��     ���� 0 _path_extension  �� )�,E� �������	
���� 0 
folder_ref  ��  ��  	  
 ���� 0 _folder  �� )�,E� ����������� 0 	is_folder  ��  ��     ���� 0 
_is_folder  �� )�,E� ����������� 0 item_ref  ��  ��     ���� 0 	_item_ref  �� )�,E� ����������� 0 item_exists  ��  ��     �������������� 0 	_item_ref  �� 0 to_text  �� 0 to_alias  �� 0 _folder  ��  ��  �� 6 +**)�,k+ k+ )�,FO**)�,k+ k+ )�,FOeW X  hOf� ���������� 0 item_exists_without_update  ��  ��     ������������ 0 	_item_ref  �� 0 to_text  �� 0 to_alias  ��  ��  ��   **)�,k+ k+ OeW X  hOf� ��+�������� 0 is_posix  ��  ��     ��1�� 0 
_delimiter  �� )�,� � ��D�������� 0 as_alias  ��  ��     �������������� 0 	_item_ref  
�� 
pcls
�� 
alis�� 0 to_text  �� 0 to_alias  �� 0 _folder  �� 8)�,�,� (**)�,k+ k+ )�,FO**)�,k+ k+ )�,FY hO)�,E� ��v�������� 0 as_furl  ��  ��     ������ 0 	_item_ref  
�� 
furl�� )�,�&� ����������� 0 
posix_path  ��  ��     ������ 0 	_item_ref  
�� 
psxp�� )�,�,E� ����������� 0 normalized_posix_path  ��  ��   ���� 
0 a_path   ��������� 0 
posix_path  
�� 
ctxt������ #*j+  E�O�� �[�\[Zk\Z�2E�Y hO�� ����������� 0 parent_folder  ��  ��     ���������� 0 
folder_ref  �� 0 prefering_posix  �� 0 is_posix  �� 0 make_with_opts  �� **j+  �*j+ ll+ � �����~ �}�� 0 change_name  � �|!�| !  �{�{ 
0 a_name  �~   �z�y�x�z 
0 a_name  �y 0 
a_basename  �x 0 a_suffix    �w�v�u�t�s�r�q�p�w 0 
split_name  
�v 
cobj�u 	0 clone  �t 	0 _name  �s 0 	_basename  �r 0 _path_extension  �q 0 
build_path  �p 0 	_item_ref  �} >*�k+  E[�k/E�Z[�l/E�ZO*j+   �*�,FO�*�,FO�*�,FO*j+ *�,FO*U� �o�n�m"#�l�o 0 change_path_extension  �n �k$�k $  �j�j 
0 a_text  �m  " �i�i 
0 a_text  # �h�g�f�e�d6�c�b�h 	0 clone  �g 0 _path_extension  
�f 
msng�e 0 	_basename  �d 	0 _name  �c 0 
build_path  �b 0 	_item_ref  �l 8*j+   0�*�,FO��  *�,*�,FY *�,�%�%*�,FO*j+ *�,FO*U� �aL�`�_%&�^�a 0 change_folder  �` �]'�] '  �\�\ 0 a_folder  �_  % �[�[ 0 a_folder  & �Z�Y�X�W�V�U�T�S�R�Q�P�O
�Z 
ctxt
�Y 
utxt
�X 
TEXT
�W 
pcls�V 0 	delimiter  
�U 
bool�T 	0 clone  �S 0 _folder  
�R 
msng�Q 	0 _disk  �P 0 
build_path  �O 0 	_item_ref  �^ I���mv��,	 �*j+ �& �*j+ %E�Y hO*j+  �*�,FO�*�,FO*j+ 
*�,FO*U� �N��M�L()�K�N 	0 child  �M �J*�J *  �I�I 0 subpath  �L  ( �H�G�H 0 subpath  �G 
0 a_path  ) �F�E�D�C�B�F 0 as_text  �E 0 	delimiter  �D 0 prefering_posix  �C 0 is_posix  �B 0 make_with_opts  �K 3*j+  E�O�*j+  �*j+ %E�Y hO*��%�*j+ ll+ � �A��@�?+,�>�A 	0 clone  �@  �?  +  , 
�=�<�;�:�9�8�7�6�5�4
�= 
pare�< 	0 _disk  �; 0 _folder  �: 	0 _name  �9 0 	_basename  �8 0 _path_extension  �7 0 
_is_folder  �6 0 	_item_ref  �5 �4 0 make_with_vars  �> **�,)�,)�,)�,)�,)�,)�,)�,�+ 	� �3��2�1-.�0�3 0 
build_path  �2  �1  - �/�.�/ 
0 a_name  �. 0 folder_path  . 	�-�,�+�*��)�(�'�&�- 0 _path_extension  
�, 
msng�+ 	0 _name  �* 0 	_basename  �) 0 
_is_folder  �( 0 	delimiter  �' 0 _folder  �& 0 to_text  �0 A)�,�  
)�,E�Y )�,�%)�,%E�O)�,E �*j+ %E�Y hO*)�,k+ E�O��%� �%�$�#/0�"�% 0 item_at  �$ �!1�! 1  � �  0 n  �#  / �� 0 n  0 ��� 0 	_contents  
� 
cobj�" 	)�,�/E� �!��23�� 0 compose  � �4� 4  ���� 0 n1  � 0 n2  � 0 folder_flag  �  2 ������ 0 n1  � 0 n2  � 0 folder_flag  � 0 tid  � 0 a_result  3 ������

� 
ascr
� 
txdl� 0 
_delimiter  � 0 	_contents  
� 
cobj
�
 
utxt� ;��,E�O)�,kv��,FO)�,[�\[Z�\Z�2�&E�O� �)�,%E�Y hO���,FO�� �	]��56��	 0 make_path_elements  � �7� 7  �� 
0 a_list  �  5 ���� 
0 a_list  � 0 a_parent  � 0 pathelements pathElements6 � f8�  0 pathelements pathElements8 ��9����:;��
�� .ascrinit****      � ****9 k     << h== k>> n����  ��  ��  : ������
�� 
pare�� 0 	_contents  
�� 
leng; ������
�� 
pare�� 0 	_contents  
�� 
leng�� b  N  Ob   �Ob   �,E�� )E�O��K S�� ��w����?@���� 0 	decompose  �� ��A�� A  ���� 
0 a_path  ��  ? �������� 
0 a_path  �� 0 tid  �� 
0 a_list  @ ����������
�� 
ascr
�� 
txdl�� 0 
_delimiter  
�� 
citm�� 0 make_path_elements  �� "��,E�O)�,��,FO��-E�O���,FO*�k+ � �������BC���� 0 	delimiter  ��  ��  B  C ���� 0 
_delimiter  �� )�,E� �������DE���� 0 set_name  �� ��F�� F  ���� 
0 a_name  ��  D ���� 
0 a_name  E 	�������������������� 0 
split_name  
�� 
cobj�� 0 	_basename  �� 0 _path_extension  �� 	0 _name  �� 0 	_item_ref  
�� 
pcls
�� 
alis�� 0 
build_path  �� ;*�k+  E[�k/)�,FZ[�l/)�,FZO�)�,FO)�,�,� *j+ *�,FY hO)� �������GH��
�� .aevtoappnull  �   � ****��  ��  G ������ 0 msg  �� 	0 errno  H ��������I����
�� .earsffdralis        afdr
�� 
rcIP
�� .HBsushHBTEXT    ��� file�� 0 msg  I ������
�� 
errn�� 	0 errno  ��  
�� 
ret 
�� .sysodisAaleR        TEXT��   )j  �el W X  ��%�%j � �������JK���� 	0 debug  ��  ��  J ������ 
0 a_path  �� 0 a_result  K 
3��������������s���� 0 	make_with  
�� 
msng�� 0 change_path_extension  �� 0 
posix_path  �� 0 as_text  �� 0 
build_path  
�� .ascrcmnt****      � ****�� 	0 clone  �� C�E�O*�k+ E�O��k+ j+ O�j+ O�j+ O�j+ j O��k+ O�j+ 	O�ascr  ��ޭ