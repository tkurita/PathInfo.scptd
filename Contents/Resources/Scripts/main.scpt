FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007, 2008, 2009, 2010 ,2011,2012 Tetsuro KURITA

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	2   C o p y r i g h t   ( C )   2 0 0 7 ,   2 0 0 8 ,   2 0 0 9 ,   2 0 1 0   , 2 0 1 1 , 2 0 1 2   T e t s u r o   K U R I T A  
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
vers  m       �   
 1 . 2 . 1      l     ��������  ��  ��        l      ��  ��    i c!@title PathInfo Reference* Version : 1.2.1* Author : Tetsuro KURITA ((<scriptfactory@mac.com>))     �   � ! @ t i t l e   P a t h I n f o   R e f e r e n c e  *   V e r s i o n   :   1 . 2 . 1  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) )       l     ��������  ��  ��         l      �� ! "��   ! D >!@group Class methodsObtain information from a path quickly.    " � # # | ! @ g r o u p   C l a s s   m e t h o d s  O b t a i n   i n f o r m a t i o n   f r o m   a   p a t h   q u i c k l y .     $ % $ l     ��������  ��  ��   %  & ' & l      �� ( )��   (60!@abstructObtain a name from a reference to a file/folder.@param an_item (a reference to file/folder) : Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.@resulttext : a name of the passed item    ) � * *` ! @ a b s t r u c t  O b t a i n   a   n a m e   f r o m   a   r e f e r e n c e   t o   a   f i l e / f o l d e r .  @ p a r a m   a n _ i t e m   ( a   r e f e r e n c e   t o   f i l e / f o l d e r )   :    A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l .  @ r e s u l t  t e x t   :   a   n a m e   o f   t h e   p a s s e d   i t e m  '  + , + i    	 - . - I      �� /���� 0 name_of   /  0�� 0 o      ���� 0 an_item  ��  ��   . L      1 1 n    
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
0 a_path  ��  ��  � k     r�� ��� r     ��� n     ��� m    ��
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
0 a_path   �� o      ���� 0 	pathtrans  ��  ��   k    [  r       n     !"! m    ��
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
 O b t a i n   a   p a t h   e x t e n s i o n   o f   t h e   f i l e   n a m e .   T h e   r e s u l t   d o e s   n o t   s t a r t s   w i t h   " . " .  @ r e s u l t   t e x t � ��� i   N Q��� I      �������� 0 path_extension  ��  ��  � L     �� n    ��� o    ���� 0 _path_extension  �  f     � ��� l     �������  ��  �  � ��� l      �~���~  � ^ X!@abstruct Obtain the volume name of the item referenced by the instance.@result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t � ��� i   R U��� I      �}�|�{�} 0 volume_name  �|  �{  � k     M�� ��� Z     ���z�y� >    ��� n    ��� o    �x�x 	0 _disk  �  f     � m    �� ���  /� r    ��� n   ��� I    �w�v�u�w 0 	item_name  �v  �u  � I    �t��s�t 0 	make_with  � ��r� n  	 ��� o   
 �q�q 	0 _disk  �  f   	 
�r  �s  � o      �p�p 0 a_result  �z  �y  � ��� l   �o���o  � : 4 if my _disk is an alias, item_name() will return ""   � ��� h   i f   m y   _ d i s k   i s   a n   a l i a s ,   i t e m _ n a m e ( )   w i l l   r e t u r n   " "� ��� Z    '���n�m� >   ��� o    �l�l 0 a_result  � m    �� ���  � L   ! #�� o   ! "�k�k 0 a_result  �n  �m  � ��� l  ( (�j�i�h�j  �i  �h  � ��� r   ( /��� I   ( -�g�f�e�g 0 hfs_path  �f  �e  � o      �d�d 
0 a_path  � ��� r   0 5��� n  0 3��� 1   1 3�c
�c 
txdl� 1   0 1�b
�b 
ascr� o      �a�a 0 tid  � ��� r   6 =��� J   6 9�� ��`� m   6 7�� ���  :�`  � n     ��� 1   : <�_
�_ 
txdl� 1   9 :�^
�^ 
ascr� ��� r   > D��� n   > B��� 4   ? B�]�
�] 
citm� m   @ A�\�\ � o   > ?�[�[ 
0 a_path  � o      �Z�Z 0 a_result  � ��� r   E J��� o   E F�Y�Y 0 tid  � n     ��� 1   G I�X
�X 
txdl� 1   F G�W
�W 
ascr� ��V� L   K M�� o   K L�U�U 0 a_result  �V  � ��� l     �T�S�R�T  �S  �R  �    l      �Q�Q   j d!@abstruct 
Obtain a file reference to the folder containing the target.@result an alias or a path    � � ! @ a b s t r u c t   
 O b t a i n   a   f i l e   r e f e r e n c e   t o   t h e   f o l d e r   c o n t a i n i n g   t h e   t a r g e t .  @ r e s u l t   a n   a l i a s   o r   a   p a t h   i   V Y I      �P�O�N�P 0 
folder_ref  �O  �N   L     		 n    

 o    �M�M 0 _folder    f       l     �L�K�J�L  �K  �J    l      �I�I   � �!@abstruct 
Whether the target is a folder or not.
@description
If given path ends with a path delimiter, true will be returned wtihout checking file system. Therefor a wrong result may be returned.@result boolean    �� ! @ a b s t r u c t   
 W h e t h e r   t h e   t a r g e t   i s   a   f o l d e r   o r   n o t . 
 @ d e s c r i p t i o n 
 I f   g i v e n   p a t h   e n d s   w i t h   a   p a t h   d e l i m i t e r ,   t r u e   w i l l   b e   r e t u r n e d   w t i h o u t   c h e c k i n g   f i l e   s y s t e m .   T h e r e f o r   a   w r o n g   r e s u l t   m a y   b e   r e t u r n e d .  @ r e s u l t   b o o l e a n   i   Z ] I      �H�G�F�H 0 	is_folder  �G  �F   L      n     o    �E�E 0 
_is_folder    f       l     �D�C�B�D  �C  �B    l      �A�A   m g!@abstruct 
Obtain an internal file reference which the target contains.@result alias or text of path    �   � ! @ a b s t r u c t   
 O b t a i n   a n   i n t e r n a l   f i l e   r e f e r e n c e   w h i c h   t h e   t a r g e t   c o n t a i n s .  @ r e s u l t   a l i a s   o r   t e x t   o f   p a t h  !"! i   ^ a#$# I      �@�?�>�@ 0 item_ref  �?  �>  $ L     %% n    &'& o    �=�= 0 	_item_ref  '  f     " ()( l     �<�;�:�<  �;  �:  ) *+* l      �9,-�9  , � �!@abstruct 
Whether an item exits in the file sysem or not.
@description
If the target exsits, the internal file reference is converted to an alias.@result boolean   - �..J ! @ a b s t r u c t   
 W h e t h e r   a n   i t e m   e x i t s   i n   t h e   f i l e   s y s e m   o r   n o t . 
 @ d e s c r i p t i o n 
 I f   t h e   t a r g e t   e x s i t s ,   t h e   i n t e r n a l   f i l e   r e f e r e n c e   i s   c o n v e r t e d   t o   a n   a l i a s .  @ r e s u l t   b o o l e a n + /0/ i   b e121 I      �8�7�6�8 0 item_exists  �7  �6  2 k     533 454 Q     267�56 k    )88 9:9 r    ;<; I    �4=�3�4 0 to_alias  = >�2> I    �1?�0�1 0 to_text  ? @�/@ n   ABA o    �.�. 0 	_item_ref  B  f    �/  �0  �2  �3  < n     CDC o    �-�- 0 	_item_ref  D  f    : EFE r    &GHG I    "�,I�+�, 0 to_alias  I J�*J I    �)K�(�) 0 to_text  K L�'L n   MNM o    �&�& 0 _folder  N  f    �'  �(  �*  �+  H n     OPO o   # %�%�% 0 _folder  P  f   " #F Q�$Q L   ' )RR m   ' (�#
�# boovtrue�$  7 R      �"�!� 
�" .ascrerr ****      � ****�!  �   �5  5 S�S L   3 5TT m   3 4�
� boovfals�  0 UVU l     ����  �  �  V WXW l      �YZ�  Y � �!@abstruct 
Whether an item exits in the file sysem or not.
@description
The internal file reference will not be changed unlike ((<item_exists>)). @result boolean   Z �[[H ! @ a b s t r u c t   
 W h e t h e r   a n   i t e m   e x i t s   i n   t h e   f i l e   s y s e m   o r   n o t . 
 @ d e s c r i p t i o n 
 T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .    @ r e s u l t   b o o l e a n X \]\ i   f i^_^ I      ���� 0 item_exists_without_update  �  �  _ k     `` aba Q     cd�c k    ee fgf I    �h�� 0 to_alias  h i�i I    �j�� 0 to_text  j k�k n   lml o    �� 0 	_item_ref  m  f    �  �  �  �  g n�n L    oo m    �
� boovtrue�  d R      ���

� .ascrerr ****      � ****�  �
  �  b p�	p L    qq m    �
� boovfals�	  ] rsr l     ����  �  �  s tut l      �vw�  v n h!@abstruct 
If ((<child>)) and ((<change_folder>)) prefer posix path, true is returned.
@result boolean   w �xx � ! @ a b s t r u c t   
 I f   ( ( < c h i l d > ) )   a n d   ( ( < c h a n g e _ f o l d e r > ) )   p r e f e r   p o s i x   p a t h ,   t r u e   i s   r e t u r n e d . 
 @ r e s u l t   b o o l e a n u yzy i   j m{|{ I      ���� 0 is_posix  �  �  | L     }} =    ~~ n    ��� o    � �  0 
_delimiter  �  f      m    �� ���  /z ��� l     ��������  ��  ��  � ��� l      ������  � ( "!@group Converting reference form    � ��� D ! @ g r o u p   C o n v e r t i n g   r e f e r e n c e   f o r m  � ��� l     ��������  ��  ��  � ��� l      ������  � � ~!@abstruct Obtain a file reference as alias.
@description
If failed to coerce to an alias, an error will raise.@result alias   � ��� � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   a l i a s . 
 @ d e s c r i p t i o n 
 I f   f a i l e d   t o   c o e r c e   t o   a n   a l i a s ,   a n   e r r o r   w i l l   r a i s e .  @ r e s u l t   a l i a s � ��� i   n q��� I      �������� 0 as_alias  ��  ��  � k     7�� ��� Z     1������� >    ��� n     ��� m    ��
�� 
pcls� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
alis� k   
 -�� ��� r   
 ��� I   
 ������� 0 to_alias  � ���� I    ������� 0 to_text  � ���� n   ��� o    ���� 0 	_item_ref  �  f    ��  ��  ��  ��  � n     ��� o    ���� 0 	_item_ref  �  f    � ���� r    -��� I    )������� 0 to_alias  � ���� I    %������� 0 to_text  � ���� n   !��� o    !���� 0 _folder  �  f    ��  ��  ��  ��  � n     ��� o   * ,���� 0 _folder  �  f   ) *��  ��  ��  � ���� L   2 7�� n  2 6��� o   3 5���� 0 	_item_ref  �  f   2 3��  � ��� l     ��������  ��  ��  � ��� l      ������  � G A!@abstruct Obtain a file reference as File URL.@result File URL   � ��� � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   F i l e   U R L .  @ r e s u l t   F i l e   U R L � ��� i   r u��� I      �������� 0 as_furl  ��  ��  � L     �� c     ��� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
furl� ��� l     ��������  ��  ��  � ��� l      ������  � J D!@abstruct Obtain a file reference as POSIX path form.@result text   � ��� � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   P O S I X   p a t h   f o r m .  @ r e s u l t   t e x t � ��� i   v y��� I      �������� 0 
posix_path  ��  ��  � L     �� n    ��� n   ��� 1    ��
�� 
psxp� o    ���� 0 	_item_ref  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � M G!@abstruct Obtain POSIX path which does not end with "/".@result text   � ��� � ! @ a b s t r u c t   O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " .  @ r e s u l t   t e x t � ��� i   z }��� I      �������� 0 normalized_posix_path  ��  ��  � k     "�� ��� r     ��� I     �������� 0 
posix_path  ��  ��  � o      ���� 
0 a_path  � ��� Z    ������� D    ��� o    	���� 
0 a_path  � m   	 
�� ���  /� r    ��� n    ��� 7   ����
�� 
ctxt� m    ���� � m    ������� o    ���� 
0 a_path  � o      ���� 
0 a_path  ��  ��  � ���� L     "�� o     !���� 
0 a_path  ��  � ��� l     ��������  ��  ��  � � � l      ����   [ U!@syntax hfs_path()
@abstruct Obtain a file reference as HFS path form.@result text    � � ! @ s y n t a x   h f s _ p a t h ( ) 
 @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   H F S   p a t h   f o r m .  @ r e s u l t   t e x t    l     ��������  ��  ��    l      ��	��   � �!@syntax as_text()
@abstruct Obtain a path text.@result text of HFS path or POSX path. The path form follows the path form passed to ((<make_with>)).   	 �

. ! @ s y n t a x   a s _ t e x t ( ) 
 @ a b s t r u c t   O b t a i n   a   p a t h   t e x t .  @ r e s u l t   t e x t   o f   H F S   p a t h   o r   P O S X   p a t h .   T h e   p a t h   f o r m   f o l l o w s   t h e   p a t h   f o r m   p a s s e d   t o   ( ( < m a k e _ w i t h > ) ) .   l     ��������  ��  ��    l     ��������  ��  ��    l      ����   6 0!@group Making a new instance from the instance     � ` ! @ g r o u p   M a k i n g   a   n e w   i n s t a n c e   f r o m   t h e   i n s t a n c e    l     ��������  ��  ��    l      ����    y!@abstruct 
Obtain an instance of PathInfo referencing the folder containing the target.@result an instance of PathInfo    � � ! @ a b s t r u c t   
 O b t a i n   a n   i n s t a n c e   o f   P a t h I n f o   r e f e r e n c i n g   t h e   f o l d e r   c o n t a i n i n g   t h e   t a r g e t .  @ r e s u l t   a n   i n s t a n c e   o f   P a t h I n f o   i   ~ � I      �������� 0 parent_folder  ��  ��   L      I     �� ���� 0 make_with_opts    !"! I    �������� 0 
folder_ref  ��  ��  " #��# K    $$ ��%���� 0 prefering_posix  % I    �������� 0 is_posix  ��  ��  ��  ��  ��   &'& l     ��������  ��  ��  ' ()( l      ��*+��  * � �!@abstruct
Make a new PathInfo changing the item name.
@param a_name (text) : An item name@result script object : A new instance of PathInfo   + �,, ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   i t e m   n a m e . 
 @ p a r a m   a _ n a m e   ( t e x t )   :   A n   i t e m   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o ) -.- i   � �/0/ I      ��1���� 0 change_name  1 2��2 o      ���� 
0 a_name  ��  ��  0 k     =33 454 r     676 I      ��8���� 0 
split_name  8 9��9 o    ���� 
0 a_name  ��  ��  7 J      :: ;<; o      ���� 0 
a_basename  < =��= o      ���� 0 a_suffix  ��  5 >��> O    =?@? k    <AA BCB r    #DED o    ���� 
0 a_name  E n     FGF o     "���� 	0 _name  G  g     C HIH r   $ )JKJ o   $ %���� 0 
a_basename  K n     LML o   & (���� 0 	_basename  M  g   % &I NON r   * /PQP o   * +���� 0 a_suffix  Q n     RSR o   , .�� 0 _path_extension  S  g   + ,O TUT r   0 9VWV I   0 5�~�}�|�~ 0 
build_path  �}  �|  W n     XYX o   6 8�{�{ 0 	_item_ref  Y  g   5 6U Z�zZ L   : <[[  g   : ;�z  @ I    �y�x�w�y 	0 clone  �x  �w  ��  . \]\ l     �v�u�t�v  �u  �t  ] ^_^ l      �s`a�s  ` � �!@abstruct
Make a new PathInfo changing the path extension
@param a_text (text) : A path extension. It should not start with &quot;.&quot;.@result script object : a new instance of PathInfo   a �bb~ ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   p a t h   e x t e n s i o n 
 @ p a r a m   a _ t e x t   ( t e x t )   :   A   p a t h   e x t e n s i o n .   I t   s h o u l d   n o t   s t a r t   w i t h   & q u o t ; . & q u o t ; .  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   P a t h I n f o _ cdc i   � �efe I      �rg�q�r 0 change_path_extension  g h�ph o      �o�o 
0 a_text  �p  �q  f O     7iji k    6kk lml r    non o    	�n�n 
0 a_text  o n     pqp o   
 �m�m 0 _path_extension  q  g   	 
m rsr Z    )tu�lvt =   wxw o    �k�k 
0 a_text  x m    �j
�j 
msngu r    yzy n   {|{ o    �i�i 0 	_basename  |  g    z n     }~} o    �h�h 	0 _name  ~  g    �l  v r    )� b    %��� b    #��� n   !��� o    !�g�g 0 	_basename  �  g    � m   ! "�� ���  .� o   # $�f�f 
0 a_text  � n     ��� o   & (�e�e 	0 _name  �  g   % &s ��� r   * 3��� I   * /�d�c�b�d 0 
build_path  �c  �b  � n     ��� o   0 2�a�a 0 	_item_ref  �  g   / 0� ��`� L   4 6��  g   4 5�`  j I     �_�^�]�_ 	0 clone  �^  �]  d ��� l     �\�[�Z�\  �[  �Z  � ��� l      �Y���Y  ���!@abstruct
Make a new PathInfo changing the folder.
@description
The path form for a parameter must keep consistency with a path passed to the constructor method. If the target was constucted by ((<make_with_posix>)). The path form must be POSIX. If the target was constructed by ((<make_with_hfs>)), the path form must be HFS.
@param a_folder (alias, furl, POSIX path or HFS path) : A reference to a folder@result script object : A new instance of PathInfo   � ���� ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   f o l d e r . 
 @ d e s c r i p t i o n 
 T h e   p a t h   f o r m   f o r   a   p a r a m e t e r   m u s t   k e e p   c o n s i s t e n c y   w i t h   a   p a t h   p a s s e d   t o   t h e   c o n s t r u c t o r   m e t h o d .   I f   t h e   t a r g e t   w a s   c o n s t u c t e d   b y   ( ( < m a k e _ w i t h _ p o s i x > ) ) .   T h e   p a t h   f o r m   m u s t   b e   P O S I X .   I f   t h e   t a r g e t   w a s   c o n s t r u c t e d   b y   ( ( < m a k e _ w i t h _ h f s > ) ) ,   t h e   p a t h   f o r m   m u s t   b e   H F S . 
 @ p a r a m   a _ f o l d e r   ( a l i a s ,   f u r l ,   P O S I X   p a t h   o r   H F S   p a t h )   :   A   r e f e r e n c e   t o   a   f o l d e r  @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o � ��� i   � ���� I      �X��W�X 0 change_folder  � ��V� o      �U�U 0 a_folder  �V  �W  � k     H�� ��� Z     &���T�S� F     ��� l    	��R�Q� E    	��� J     �� ��� m     �P
�P 
ctxt� ��� m    �O
�O 
utxt� ��N� m    �M
�M 
TEXT�N  � n    ��� m    �L
�L 
pcls� o    �K�K 0 a_folder  �R  �Q  � l   ��J�I� H    �� D    ��� o    �H�H 0 a_folder  � I    �G�F�E�G 0 	delimiter  �F  �E  �J  �I  � r    "��� b     ��� o    �D�D 0 a_folder  � I    �C�B�A�C 0 	delimiter  �B  �A  � o      �@�@ 0 a_folder  �T  �S  � ��?� O   ' H��� k   / G�� ��� r   / 4��� o   / 0�>�> 0 a_folder  � n     ��� o   1 3�=�= 0 _folder  �  g   0 1� ��� r   5 :��� m   5 6�<
�< 
msng� n     ��� o   7 9�;�; 	0 _disk  �  g   6 7� ��� r   ; D��� I   ; @�:�9�8�: 0 
build_path  �9  �8  � n     ��� o   A C�7�7 0 	_item_ref  �  g   @ A� ��6� L   E G��  g   E F�6  � I   ' ,�5�4�3�5 	0 clone  �4  �3  �?  � ��� l     �2�1�0�2  �1  �0  � ��� l      �/���/  ���!@abstruct
Make a new PathInfo appending a sub path.
@description
The path form for a parameter must keep consistency with a path passed to the constructor method. If the target was constucted by ((<make_with_posix>)). The path form must be POSIX. If the target was constructed by ((<make_with_hfs>)), the path form must be HFS.
@param subpath (text)  : A relative path from the target.@result script object : a new instance of PathInfo   � ���l ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   a p p e n d i n g   a   s u b   p a t h . 
 @ d e s c r i p t i o n 
 T h e   p a t h   f o r m   f o r   a   p a r a m e t e r   m u s t   k e e p   c o n s i s t e n c y   w i t h   a   p a t h   p a s s e d   t o   t h e   c o n s t r u c t o r   m e t h o d .   I f   t h e   t a r g e t   w a s   c o n s t u c t e d   b y   ( ( < m a k e _ w i t h _ p o s i x > ) ) .   T h e   p a t h   f o r m   m u s t   b e   P O S I X .   I f   t h e   t a r g e t   w a s   c o n s t r u c t e d   b y   ( ( < m a k e _ w i t h _ h f s > ) ) ,   t h e   p a t h   f o r m   m u s t   b e   H F S . 
 @ p a r a m   s u b p a t h   ( t e x t )     :   A   r e l a t i v e   p a t h   f r o m   t h e   t a r g e t .  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   P a t h I n f o � ��� i   � ���� I      �.��-�. 	0 child  � ��,� o      �+�+ 0 subpath  �,  �-  � k     2�� ��� r     ��� I     �*�)�(�* 0 as_text  �)  �(  � o      �'�' 
0 a_path  � ��� Z     ���&�%� H    �� D    ��� o    	�$�$ 
0 a_path  � I   	 �#�"�!�# 0 	delimiter  �"  �!  � r    ��� b    ��� o    � �  
0 a_path  � I    ���� 0 	delimiter  �  �  � o      �� 
0 a_path  �&  �%  � ��� L   ! 2�� I   ! 1���� 0 make_with_opts  � ��� b   " %��� o   " #�� 
0 a_path  � o   # $�� 0 subpath  � ��� K   % -�� ���� 0 prefering_posix  � I   & +���� 0 is_posix  �  �  �  �  �  �  � ��� l     ����  �  �  � ��� l      ����  � � z!@abstruct
Make a new PathInfo which refering the same file to the target.
@result script object : a instance of PathInfo
   � ��� � ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   w h i c h   r e f e r i n g   t h e   s a m e   f i l e   t o   t h e   t a r g e t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   i n s t a n c e   o f   P a t h I n f o 
�    i   � � I      ���
� 	0 clone  �  �
   L      I     �	��	 0 make_with_vars    1    �
� 
pare 	 n   

 o    �� 	0 _disk    f    	  n   
 o    
�� 0 _folder    f      n  
  o    �� 	0 _name    f   
   n    o    �� 0 	_basename    f      n    o    �� 0 _path_extension    f      n    o    �� 0 
_is_folder    f      �   n   !"! o    ���� 0 	_item_ref  "  f    �   �   #$# l     ��������  ��  ��  $ %&% l      ��'(��  '  	 private    ( �))    p r i v a t e  & *+* i   � �,-, I      �������� 0 
build_path  ��  ��  - k     @.. /0/ Z     12��31 =    454 n    676 o    ���� 0 _path_extension  7  f     5 m    ��
�� 
msng2 r    898 n   :;: o   	 ���� 	0 _name  ;  f    	9 o      ���� 
0 a_name  ��  3 r    <=< l   >����> b    ?@? b    ABA n   CDC o    ���� 0 	_basename  D  f    B m    EE �FF  .@ n   GHG o    ���� 0 _path_extension  H  f    ��  ��  = o      ���� 
0 a_name  0 IJI Z    0KL����K n    MNM o    ���� 0 
_is_folder  N  f    L r   # ,OPO b   # *QRQ o   # $���� 
0 a_name  R I   $ )�������� 0 	delimiter  ��  ��  P o      ���� 
0 a_name  ��  ��  J STS r   1 ;UVU I   1 9��W���� 0 to_text  W X��X n  2 5YZY o   3 5���� 0 _folder  Z  f   2 3��  ��  V o      ���� 0 folder_path  T [��[ L   < @\\ b   < ?]^] o   < =���� 0 folder_path  ^ o   = >���� 
0 a_name  ��  + _`_ l     ��������  ��  ��  ` aba l      ��cd��  c    methods for PathElements    d �ee 4   m e t h o d s   f o r   P a t h E l e m e n t s  b fgf i   � �hih I      ��j���� 0 item_at  j k��k o      ���� 0 n  ��  ��  i L     ll n    mnm n   opo 4    ��q
�� 
cobjq o    ���� 0 n  p o    ���� 0 	_contents  n  f     g rsr l     ��������  ��  ��  s tut i   � �vwv I      ��x���� 0 compose  x yzy o      ���� 0 n1  z {|{ o      ���� 0 n2  | }��} o      ���� 0 folder_flag  ��  ��  w k     :~~ � r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 tid  � ��� r    ��� J    �� ���� n   	��� o    	���� 0 
_delimiter  �  f    ��  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    !��� c    ��� l   ������ n    ��� 7   ����
�� 
cobj� o    ���� 0 n1  � o    ���� 0 n2  � n   ��� o    ���� 0 	_contents  �  f    ��  ��  � m    ��
�� 
utxt� o      ���� 0 a_result  � ��� Z   " 1������� o   " #���� 0 folder_flag  � r   & -��� b   & +��� o   & '���� 0 a_result  � n  ' *��� o   ( *���� 0 
_delimiter  �  f   ' (� o      ���� 0 a_result  ��  ��  � ��� r   2 7��� o   2 3���� 0 tid  � n     ��� 1   4 6��
�� 
txdl� 1   3 4��
�� 
ascr� ���� L   8 :�� o   8 9���� 0 a_result  ��  u ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 make_path_elements  � ���� o      ���� 
0 a_list  ��  ��  � k     �� ��� r     ���  f     � o      ���� 0 a_parent  � ���� h    ����� 0 pathelements pathElements� k      �� ��� j     ���
�� 
pare� o     ���� 0 a_parent  � ��� j   	 ����� 0 	_contents  � o   	 ���� 
0 a_list  � ���� j    ���
�� 
leng� n    ��� 1    ��
�� 
leng� o    ���� 
0 a_list  ��  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 	decompose  � ���� o      ���� 
0 a_path  ��  ��  � k     !�� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 tid  � ��� r    ��� n   	��� o    	���� 0 
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
0 a_list  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 	delimiter  ��  ��  � L     �� n    ��� o    �� 0 
_delimiter  �  f     � ��� l     �~�}�|�~  �}  �|  � ��� i   � ���� I      �{��z�{ 0 set_name  � ��y� o      �x�x 
0 a_name  �y  �z  � k     :    r      I      �w�v�w 0 
split_name   �u o    �t�t 
0 a_name  �u  �v   J       	 n     

 o    �s�s 0 	_basename    f    	 �r n      o    �q�q 0 _path_extension    f    �r    r     o    �p�p 
0 a_name   n      o    �o�o 	0 _name    f      Z     7�n�m >    ' n     % m   # %�l
�l 
pcls n    # o   ! #�k�k 0 	_item_ref    f     ! m   % &�j
�j 
alis r   * 3  I   * /�i�h�g�i 0 
build_path  �h  �g    n     !"! o   0 2�f�f 0 	_item_ref  "  g   / 0�n  �m   #�e# L   8 :$$  f   8 9�e  � %&% l     �d�c�b�d  �c  �b  & '(' l      �a)*�a  )!@group Error Numbers and Error Messages
* number : 980
	* message : Unknown data type. PathInfo can't convert to a path.	* Raise when a parameter passed to ((<make_with>)), ((<make_with_hfs>)), ((<make_with_posix>)),((<change_folder>)) can not be treated as a file reference.   * �++, ! @ g r o u p   E r r o r   N u m b e r s   a n d   E r r o r   M e s s a g e s 
 *   n u m b e r   :   9 8 0 
 	 *   m e s s a g e   :   U n k n o w n   d a t a   t y p e .   P a t h I n f o   c a n ' t   c o n v e r t   t o   a   p a t h .  	 *   R a i s e   w h e n   a   p a r a m e t e r   p a s s e d   t o   ( ( < m a k e _ w i t h > ) ) ,   ( ( < m a k e _ w i t h _ h f s > ) ) ,   ( ( < m a k e _ w i t h _ p o s i x > ) ) , ( ( < c h a n g e _ f o l d e r > ) )   c a n   n o t   b e   t r e a t e d   a s   a   f i l e   r e f e r e n c e . ( ,-, l     �`�_�^�`  �_  �^  - ./. i   � �010 I     �]�\�[
�] .aevtoappnull  �   � ****�\  �[  1 k     22 343 l     �Z56�Z  5  return debug()   6 �77  r e t u r n   d e b u g ( )4 8�Y8 Q     9:;9 I   �X<=
�X .HBsushHBTEXT    ��� file< l   >�W�V> I   �U?�T
�U .earsffdralis        afdr?  f    �T  �W  �V  = �S@�R
�S 
rcIP@ m   	 
�Q
�Q boovtrue�R  : R      �PAB
�P .ascrerr ****      � ****A o      �O�O 0 msg  B �NC�M
�N 
errnC o      �L�L 	0 errno  �M  ; I   �KD�J
�K .sysodisAaleR        TEXTD l   E�I�HE b    FGF b    HIH o    �G�G 0 msg  I o    �F
�F 
ret G o    �E�E 	0 errno  �I  �H  �J  �Y  / JKJ l     �D�C�B�D  �C  �B  K LML i   � �NON I      �A�@�?�A 	0 debug  �@  �?  O k     'PP QRQ l     �>ST�>  S ! boot (module loader) for me   T �UU 6 b o o t   ( m o d u l e   l o a d e r )   f o r   m eR VWV l     �=�<�;�=  �<  �;  W XYX l     �:Z[�:  Z z tset a_path to "/Volumes/Macintosh HD/Users/tkurita/Dev/Projects/TeX Tools for mi/????/insert-file/sample-figure.pdf"   [ �\\ � s e t   a _ p a t h   t o   " / V o l u m e s / M a c i n t o s h   H D / U s e r s / t k u r i t a / D e v / P r o j e c t s / T e X   T o o l s   f o r   m i /0�0�0�0� / i n s e r t - f i l e / s a m p l e - f i g u r e . p d f "Y ]^] l     �9_`�9  _ K Eset a_path to "Macintosh HD:Users:tkurita:BackdropUserBackground.png"   ` �aa � s e t   a _ p a t h   t o   " M a c i n t o s h   H D : U s e r s : t k u r i t a : B a c k d r o p U s e r B a c k g r o u n d . p n g "^ bcb l     �8de�8  d Q Kset a_path to alias "Macintosh HD:Users:tkurita:BackdropUserBackground.png"   e �ff � s e t   a _ p a t h   t o   a l i a s   " M a c i n t o s h   H D : U s e r s : t k u r i t a : B a c k d r o p U s e r B a c k g r o u n d . p n g "c ghg r     iji 4     �7k
�7 
psxfk m    ll �mm R / U s e r s / t k u r i t a / B a c k d r o p U s e r B a c k g r o u n d . p n gj o      �6�6 
0 a_path  h non l   �5pq�5  p ? 9set a_path to "/Users/tkurita/BackdropUserBackground.png"   q �rr r s e t   a _ p a t h   t o   " / U s e r s / t k u r i t a / B a c k d r o p U s e r B a c k g r o u n d . p n g "o sts L    uu n   vwv I    �4�3�2�4 0 volume_name  �3  �2  w I    �1x�0�1 0 	make_with  x y�/y o    	�.�. 
0 a_path  �/  �0  t z{z r    |}| 4    �-~
�- 
alis~ m     ���  M a c i n t o s h   H D} o      �,�, 
0 a_path  { ��� L    %�� n   $��� I     $�+�*�)�+ 0 	item_name  �*  �)  � I     �(��'�( 0 	make_with  � ��&� o    �%�% 
0 a_path  �&  �'  � ��$� l  & &�#�"�!�#  �"  �!  �$  M ��� l     � ���   �  �  � ��� l     ����  �  �  �       /��  ��������������������������������������������  � -���������������
�	��������� ����������������������������������������
� 
pnam
� 
vers� 0 name_of  � 0 basename_of  � 0 path_extension_of  � 0 	suffix_of  � 0 
split_name  � 0 	folder_of  � *0 posixpathtranslator POSIXPathTranslator� &0 hfspathtranslator HFSPathTranslator� 0 	make_with  � 0 make_with_hfs  � 0 make_with_posix  � 0 make_with_pathtrans  �
 0 make_with_opts  �	 0 make_with_vars  � 0 	item_name  � 0 basename  � 0 path_extension  � 0 volume_name  � 0 
folder_ref  � 0 	is_folder  � 0 item_ref  � 0 item_exists  �  0 item_exists_without_update  �� 0 is_posix  �� 0 as_alias  �� 0 as_furl  �� 0 
posix_path  �� 0 normalized_posix_path  �� 0 parent_folder  �� 0 change_name  �� 0 change_path_extension  �� 0 change_folder  �� 	0 child  �� 	0 clone  �� 0 
build_path  �� 0 item_at  �� 0 compose  �� 0 make_path_elements  �� 0 	decompose  �� 0 	delimiter  �� 0 set_name  
�� .aevtoappnull  �   � ****�� 	0 debug  � �� .���������� 0 name_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ������ 0 	make_with  �� 0 	item_name  �� *�k+  j+ � �� @���������� 0 basename_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ������ 0 	make_with  �� 0 basename  �� *�k+  j+ � �� R���������� 0 path_extension_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ������ 0 	make_with  �� 0 path_extension  �� *�el+  j+ � �� a���������� 0 	suffix_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ���� 0 path_extension_of  �� *�k+  � �� q���������� 0 
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
utxt�� *�)�,�,E/�&� ��F��~���}�� 0 as_text  �  �~  �  � �|�{�| 0 	_item_ref  
�{ 
psxp�} )�,�,E� �zP  ��z &0 hfspathtranslator HFSPathTranslator�  �U������ �y�x�w�v�u�t�y 0 
_delimiter  �x 0 to_text  �w 0 to_alias  �v 0 resolve_disk  �u 0 hfs_path  �t 0 as_text  � �s\�r�q���p�s 0 to_text  �r �o��o �  �n�n 
0 a_file  �q  � �m�m 
0 a_file  � �l
�l 
utxt�p ��&� �kg�j�i���h�k 0 to_alias  �j �g��g �  �f�f 
0 a_file  �i  � �e�e 
0 a_file  � �d
�d 
alis�h ��&� �cr�b�a���`�c 0 resolve_disk  �b �_��_ �  �^�^ 0 path_elements  �a  � �]�] 0 path_elements  � �\�\ 0 item_at  �` �kk+  b   %� �[��Z�Y���X�[ 0 hfs_path  �Z  �Y  �  � �W�V�W 0 	_item_ref  
�V 
utxt�X )�,�&� �U��T�S���R�U 0 as_text  �T  �S  �  � �Q�P�Q 0 	_item_ref  
�P 
utxt�R )�,�&� �O��N�M���L�O 0 	make_with  �N �K��K �  �J�J 
0 a_path  �M  � �I�H�G�F�I 
0 a_path  �H 0 a_class  �G 0 hf  �F 0 	pathtrans  � �E�D�C�B��A�@�?�>��=
�E 
pcls
�D 
ctxt
�C 
utxt
�B 
TEXT
�A afdrcusr
�@ .earsffdralis        afdr
�? 
psxp
�> 
leng�= 0 make_with_pathtrans  �L s��,E�O���mv� T�� 4�j �,E�O��,l ��[�\[Zm\Zi2%E�Y �E�Ob  E�Y �� b  E�Y 	b  	E�Y 	b  E�O*��l+ 
� �<��;�:���9�< 0 make_with_hfs  �; �8��8 �  �7�7 
0 a_path  �:  � �6�6 
0 a_path  � �5�5 0 make_with_pathtrans  �9 *�b  	l+  � �4
�3�2���1�4 0 make_with_posix  �3 �0��0 �  �/�/ 
0 a_path  �2  � �.�. 
0 a_path  � �-�- 0 make_with_pathtrans  �1 *�b  l+  � �,�+�*���)�, 0 make_with_pathtrans  �+ �(��( �  �'�&�' 
0 a_path  �& 0 	pathtrans  �*  � �%�$�#�"�!� ������% 
0 a_path  �$ 0 	pathtrans  �# 0 a_class  �" 0 is_text  �! 0 path_elements  �  
0 a_disk  � 
0 a_name  � 0 folder_flag  � 0 a_folder  � 0 
a_basename  � 0 a_suffix  � ������������u������
�	���������
� 
pcls
� 
utxt
� 
TEXT
� 
ctxt
� 
alis� 0 to_text  
� 
fss 
� 
furl�  �  
� 
errn��� 0 	decompose  � 0 resolve_disk  � 0 to_alias  � 0 item_at  �
��
�	 
leng
� 
desk���� 0 compose  
� 
msng� 0 
split_name  
� 
cobj� � 0 make_with_vars  �)\��,E�OfE�O���mv� eE�Y c��  ��k+ E�Y R��lv� & ���&k+ E�W X  	��k+ E�OeE�Y % 
��&E�W X  	)��l��&�%O��k+ E�O��k+ E�O��k+ E�O� ��k+ E�Y hO�ik+ E�O�a   MeE�O�a k+ E�O�a ,l  a  	*a ,E�UY  �ka em+ E�O� ��k+ E�Y hY 6fE�O�a ,k #�ka em+ E�O� ��k+ E�Y hY a E�O*�k+ E[a k/E�Z[a l/E�ZO*��������a + � � 1���������  0 make_with_opts  �� �� ��    ���� 
0 a_path   �������� 0 prefering_posix  �� 
0 a_bool  ��  ��  � �������� 
0 a_path  �� 
0 a_bool  �� 0 	pathtrans  � ���� 0 make_with_pathtrans  �� � b  E�Y 	b  	E�O*��l+  � ��M�������� 0 make_with_vars  �� ����   ������������������ 0 	pathtrans  �� 
0 a_disk  �� 0 a_folder  �� 
0 a_name  �� 0 
a_basename  �� 0 a_suffix  �� 0 folder_flag  �� 
0 a_path  ��   	�������������������� 0 	pathtrans  �� 
0 a_disk  �� 0 a_folder  �� 
0 a_name  �� 0 
a_basename  �� 0 a_suffix  �� 0 folder_flag  �� 
0 a_path  �� 0 pathinfo PathInfo ��a�� 0 pathinfo PathInfo ��������
�� .ascrinit****      � **** k     9		 c

 f i l o r u x����  ��  ��   ����������������
�� 
pare�� 	0 _disk  �� 0 _folder  �� 	0 _name  �� 0 	_basename  �� 0 _path_extension  �� 0 
_is_folder  �� 0 	_item_ref   ����������������
�� 
pare�� 	0 _disk  �� 0 _folder  �� 	0 _name  �� 0 	_basename  �� 0 _path_extension  �� 0 
_is_folder  �� 0 	_item_ref  �� :b   N  Ob  �Ob  �Ob  �Ob  �Ob  �Ob  �Ob  ��� ��K S�O�� ����������� 0 	item_name  ��  ��     ���� 	0 _name  �� )�,E� ����������� 0 basename  ��  ��     ���� 0 	_basename  �� )�,E� ����������� 0 path_extension  ��  ��     ���� 0 _path_extension  �� )�,E� ����������� 0 volume_name  ��  ��   �������� 0 a_result  �� 
0 a_path  �� 0 tid   
������������������� 	0 _disk  �� 0 	make_with  �� 0 	item_name  �� 0 hfs_path  
�� 
ascr
�� 
txdl
�� 
citm�� N)�,� *)�,k+ j+ E�Y hO�� �Y hO*j+ E�O��,E�O�kv��,FO��k/E�O���,FO�� ���������� 0 
folder_ref  ��  ��     ���� 0 _folder  �� )�,E� ���������� 0 	is_folder  ��  ��     ���� 0 
_is_folder  �� )�,E� ��$�������� 0 item_ref  ��  ��     ���� 0 	_item_ref  �� )�,E� ��2���� ���� 0 item_exists  ��  ��      �������������� 0 	_item_ref  �� 0 to_text  �� 0 to_alias  �� 0 _folder  ��  ��  �� 6 +**)�,k+ k+ )�,FO**)�,k+ k+ )�,FOeW X  hOf� ��_����!"���� 0 item_exists_without_update  ��  ��  !  " ������������ 0 	_item_ref  �� 0 to_text  �� 0 to_alias  ��  ��  ��   **)�,k+ k+ OeW X  hOf� ��|����#$���� 0 is_posix  ��  ��  #  $ ����� 0 
_delimiter  �� )�,� � �������%&���� 0 as_alias  ��  ��  %  & ��~�}�|�{�z� 0 	_item_ref  
�~ 
pcls
�} 
alis�| 0 to_text  �{ 0 to_alias  �z 0 _folder  �� 8)�,�,� (**)�,k+ k+ )�,FO**)�,k+ k+ )�,FY hO)�,E� �y��x�w'(�v�y 0 as_furl  �x  �w  '  ( �u�t�u 0 	_item_ref  
�t 
furl�v )�,�&� �s��r�q)*�p�s 0 
posix_path  �r  �q  )  * �o�n�o 0 	_item_ref  
�n 
psxp�p )�,�,E� �m��l�k+,�j�m 0 normalized_posix_path  �l  �k  + �i�i 
0 a_path  , �h��g�f�h 0 
posix_path  
�g 
ctxt�f���j #*j+  E�O�� �[�\[Zk\Z�2E�Y hO�� �e�d�c-.�b�e 0 parent_folder  �d  �c  -  . �a�`�_�^�a 0 
folder_ref  �` 0 prefering_posix  �_ 0 is_posix  �^ 0 make_with_opts  �b **j+  �*j+ ll+ � �]0�\�[/0�Z�] 0 change_name  �\ �Y1�Y 1  �X�X 
0 a_name  �[  / �W�V�U�W 
0 a_name  �V 0 
a_basename  �U 0 a_suffix  0 �T�S�R�Q�P�O�N�M�T 0 
split_name  
�S 
cobj�R 	0 clone  �Q 	0 _name  �P 0 	_basename  �O 0 _path_extension  �N 0 
build_path  �M 0 	_item_ref  �Z >*�k+  E[�k/E�Z[�l/E�ZO*j+   �*�,FO�*�,FO�*�,FO*j+ *�,FO*U� �Lf�K�J23�I�L 0 change_path_extension  �K �H4�H 4  �G�G 
0 a_text  �J  2 �F�F 
0 a_text  3 �E�D�C�B�A��@�?�E 	0 clone  �D 0 _path_extension  
�C 
msng�B 0 	_basename  �A 	0 _name  �@ 0 
build_path  �? 0 	_item_ref  �I 8*j+   0�*�,FO��  *�,*�,FY *�,�%�%*�,FO*j+ *�,FO*U� �>��=�<56�;�> 0 change_folder  �= �:7�: 7  �9�9 0 a_folder  �<  5 �8�8 0 a_folder  6 �7�6�5�4�3�2�1�0�/�.�-�,
�7 
ctxt
�6 
utxt
�5 
TEXT
�4 
pcls�3 0 	delimiter  
�2 
bool�1 	0 clone  �0 0 _folder  
�/ 
msng�. 	0 _disk  �- 0 
build_path  �, 0 	_item_ref  �; I���mv��,	 �*j+ �& �*j+ %E�Y hO*j+  �*�,FO�*�,FO*j+ 
*�,FO*U� �+��*�)89�(�+ 	0 child  �* �':�' :  �&�& 0 subpath  �)  8 �%�$�% 0 subpath  �$ 
0 a_path  9 �#�"�!� ��# 0 as_text  �" 0 	delimiter  �! 0 prefering_posix  �  0 is_posix  � 0 make_with_opts  �( 3*j+  E�O�*j+  �*j+ %E�Y hO*��%�*j+ ll+ � ���;<�� 	0 clone  �  �  ;  < 
����������
� 
pare� 	0 _disk  � 0 _folder  � 	0 _name  � 0 	_basename  � 0 _path_extension  � 0 
_is_folder  � 0 	_item_ref  � � 0 make_with_vars  � **�,)�,)�,)�,)�,)�,)�,)�,�+ 	� �-��=>�� 0 
build_path  �  �  = ��� 
0 a_name  � 0 folder_path  > 	�
�	��E�����
 0 _path_extension  
�	 
msng� 	0 _name  � 0 	_basename  � 0 
_is_folder  � 0 	delimiter  � 0 _folder  � 0 to_text  � A)�,�  
)�,E�Y )�,�%)�,%E�O)�,E �*j+ %E�Y hO*)�,k+ E�O��%� �i�� ?@��� 0 item_at  � ��A�� A  ���� 0 n  �   ? ���� 0 n  @ ������ 0 	_contents  
�� 
cobj�� 	)�,�/E� ��w����BC���� 0 compose  �� ��D�� D  �������� 0 n1  �� 0 n2  �� 0 folder_flag  ��  B ������������ 0 n1  �� 0 n2  �� 0 folder_flag  �� 0 tid  �� 0 a_result  C ������������
�� 
ascr
�� 
txdl�� 0 
_delimiter  �� 0 	_contents  
�� 
cobj
�� 
utxt�� ;��,E�O)�,kv��,FO)�,[�\[Z�\Z�2�&E�O� �)�,%E�Y hO���,FO�� �������EF���� 0 make_path_elements  �� ��G�� G  ���� 
0 a_list  ��  E �������� 
0 a_list  �� 0 a_parent  �� 0 pathelements pathElementsF ���H�� 0 pathelements pathElementsH ��I����JK��
�� .ascrinit****      � ****I k     LL �MM �NN �����  ��  ��  J ������
�� 
pare�� 0 	_contents  
�� 
lengK ������
�� 
pare�� 0 	_contents  
�� 
leng�� b  N  Ob   �Ob   �,E��� )E�O��K S�� �������OP���� 0 	decompose  �� ��Q�� Q  ���� 
0 a_path  ��  O �������� 
0 a_path  �� 0 tid  �� 
0 a_list  P ����������
�� 
ascr
�� 
txdl�� 0 
_delimiter  
�� 
citm�� 0 make_path_elements  �� "��,E�O)�,��,FO��-E�O���,FO*�k+ � �������RS���� 0 	delimiter  ��  ��  R  S ���� 0 
_delimiter  �� )�,E� �������TU���� 0 set_name  �� ��V�� V  ���� 
0 a_name  ��  T ���� 
0 a_name  U 	�������������������� 0 
split_name  
�� 
cobj�� 0 	_basename  �� 0 _path_extension  �� 	0 _name  �� 0 	_item_ref  
�� 
pcls
�� 
alis�� 0 
build_path  �� ;*�k+  E[�k/)�,FZ[�l/)�,FZO�)�,FO)�,�,� *j+ *�,FY hO)� ��1����WX��
�� .aevtoappnull  �   � ****��  ��  W ������ 0 msg  �� 	0 errno  X ��������Y����
�� .earsffdralis        afdr
�� 
rcIP
�� .HBsushHBTEXT    ��� file�� 0 msg  Y ������
�� 
errn�� 	0 errno  ��  
�� 
ret 
�� .sysodisAaleR        TEXT��   )j  �el W X  ��%�%j � ��O����Z[���� 	0 debug  ��  ��  Z ���� 
0 a_path  [ ��l��������
�� 
psxf�� 0 	make_with  �� 0 volume_name  
�� 
alis�� 0 	item_name  �� ()��/E�O*�k+ j+ O)��/E�O*�k+ j+ OP ascr  ��ޭ