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
 1 . 2 . 2      l     ��������  ��  ��        l      ��  ��    i c!@title PathInfo Reference* Version : 1.2.2* Author : Tetsuro KURITA ((<scriptfactory@mac.com>))     �   � ! @ t i t l e   P a t h I n f o   R e f e r e n c e  *   V e r s i o n   :   1 . 2 . 2  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) )       l     ��������  ��  ��         l      �� ! "��   ! D >!@group Class methodsObtain information from a path quickly.    " � # # | ! @ g r o u p   C l a s s   m e t h o d s  O b t a i n   i n f o r m a t i o n   f r o m   a   p a t h   q u i c k l y .     $ % $ l     ��������  ��  ��   %  & ' & l      �� ( )��   (60!@abstructObtain a name from a reference to a file/folder.@param an_item (a reference to file/folder) : Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.@resulttext : a name of the passed item    ) � * *` ! @ a b s t r u c t  O b t a i n   a   n a m e   f r o m   a   r e f e r e n c e   t o   a   f i l e / f o l d e r .  @ p a r a m   a n _ i t e m   ( a   r e f e r e n c e   t o   f i l e / f o l d e r )   :    A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l .  @ r e s u l t  t e x t   :   a   n a m e   o f   t h e   p a s s e d   i t e m  '  + , + i    	 - . - I      �� /���� 0 name_of   /  0�� 0 o      ���� 0 an_item  ��  ��   . L      1 1 n    
 2 3 2 I    
�������� 0 	item_name  ��  ��   3 I     �� 4���� 0 	make_with   4  5�� 5 o    ���� 0 an_item  ��  ��   ,  6 7 6 l     ��������  ��  ��   7  8 9 8 l      �� : ;��   :!@abstructObtain a name of the item with removing a path extension.Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.@resultUnicode text : basename of the passed item    ; � < <( ! @ a b s t r u c t  O b t a i n   a   n a m e   o f   t h e   i t e m   w i t h   r e m o v i n g   a   p a t h   e x t e n s i o n .  A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l .  @ r e s u l t  U n i c o d e   t e x t   :   b a s e n a m e   o f   t h e   p a s s e d   i t e m  9  = > = i   
  ? @ ? I      �� A���� 0 basename_of   A  B�� B o      ���� 0 an_item  ��  ��   @ L      C C n    
 D E D I    
�������� 0 basename  ��  ��   E I     �� F���� 0 	make_with   F  G�� G o    ���� 0 an_item  ��  ��   >  H I H l     ��������  ��  ��   I  J K J l      �� L M��   L��!@abstructObtain a path extension of the item. The result does not starts with ".".
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.@param an_item (a reference to file/folder) : Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.<!-- end locale -->@resulttext : A path extension    M � N N� ! @ a b s t r u c t  O b t a i n   a   p a t h   e x t e n s i o n   o f   t h e   i t e m .   T h e   r e s u l t   d o e s   n o t   s t a r t s   w i t h   " . " . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n .  @ p a r a m   a n _ i t e m   ( a   r e f e r e n c e   t o   f i l e / f o l d e r )   :    A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l .  < ! - -   e n d   l o c a l e   - - >  @ r e s u l t  t e x t   :   A   p a t h   e x t e n s i o n  K  O P O i     Q R Q I      �� S���� 0 path_extension_of   S  T�� T o      ���� 0 an_item  ��  ��   R L      U U n     V W V I    �������� 0 path_extension  ��  ��   W I     �� X���� 0 	make_with   X  Y Z Y o    ���� 0 an_item   Z  [�� [ m    ��
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
0 a_file  �e  �f   � L      � � c      � � � l     ��c�b � c      � � � o     �a�a 
0 a_file   � m    �`
�` 
psxf�c  �b   � m    �_
�_ 
alis �  � � � l     �^�]�\�^  �]  �\   �  � � � i     � � � I      �[ ��Z�[ 0 resolve_disk   �  ��Y � o      �X�X 0 path_elements  �Y  �Z   � k     8 � �    r      n     1    �W
�W 
leng o     �V�V 0 path_elements   o      �U�U 0 n_elems    Z    5	�T
 F     l   	�S�R ?    	 o    �Q�Q 0 n_elems   m    �P�P �S  �R   l   �O�N =    n    I    �M�L�M 0 item_at   �K m    �J�J �K  �L   o    �I�I 0 path_elements   m     �  V o l u m e s�O  �N  	 Z    /�H l   �G�F ?     o    �E�E 0 n_elems   m    �D�D �G  �F   r    )  n   '!"! I     '�C#�B�C 0 compose  # $%$ m     !�A�A % &'& m   ! "�@�@ ' (�?( m   " #�>
�> boovtrue�?  �B  " o     �=�= 0 path_elements    o      �<�< 
0 a_disk  �H   r   , /)*) m   , -++ �,,  /* o      �;�; 
0 a_disk  �T  
 r   2 5-.- m   2 3// �00  /. o      �:�: 
0 a_disk   1�91 L   6 822 o   6 7�8�8 
0 a_disk  �9   � 343 l     �7�6�5�7  �6  �5  4 565 i    787 I      �4�3�2�4 0 hfs_path  �3  �2  8 L     
99 c     	:;: l    <�1�0< c     =>= l    ?�/�.? n     @A@ 1    �-
�- 
psxpA n    BCB o    �,�, 0 	_item_ref  C  f     �/  �.  > m    �+
�+ 
psxf�1  �0  ; m    �*
�* 
utxt6 DED l     �)�(�'�)  �(  �'  E F�&F i    GHG I      �%�$�#�% 0 as_text  �$  �#  H L     II n    JKJ n   LML 1    �"
�" 
psxpM o    �!�! 0 	_item_ref  K  f     �&   � NON l     � ���   �  �  O PQP h   & -�R� &0 hfspathtranslator HFSPathTranslatorR k      SS TUT j     �V� 0 
_delimiter  V m     WW �XX  :U YZY l     ����  �  �  Z [\[ i    ]^] I      �_�� 0 to_text  _ `�` o      �� 
0 a_file  �  �  ^ L     aa c     bcb o     �� 
0 a_file  c m    �
� 
utxt\ ded l     ����  �  �  e fgf i    
hih I      �j�� 0 to_alias  j k�k o      �� 
0 a_file  �  �  i L     ll c     mnm o     �� 
0 a_file  n m    �

�
 
alisg opo l     �	���	  �  �  p qrq i    sts I      �u�� 0 resolve_disk  u v�v o      �� 0 path_elements  �  �  t L     ww l    x��x b     yzy n    {|{ I    � }���  0 item_at  } ~��~ m    ���� ��  ��  | o     ���� 0 path_elements  z o    ���� 0 
_delimiter  �  �  r � l     ��������  ��  ��  � ��� i    ��� I      �������� 0 hfs_path  ��  ��  � L     �� c     ��� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
utxt� ��� l     ��������  ��  ��  � ���� i    ��� I      �������� 0 as_text  ��  ��  � L     �� c     ��� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
utxt��  Q ��� l     ��������  ��  ��  � ��� l      ������  �!@abstruct
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
0 a_path  ��  ��  � L     �� I     ������� 0 make_with_pathtrans  � � � o    ���� 
0 a_path    �� o    ���� &0 hfspathtranslator HFSPathTranslator��  ��  �  l     ��������  ��  ��    l      ����  RL!@abstruct
Make a PathInfo instance for a file reference. A synonym of ((<make_with>))
@description
If a POSIX path ending with "/" is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.@param a_path (alias, furl, text of POSIX path) 
@result script object : A new instance of PathInfo    �� ! @ a b s t r u c t 
 M a k e   a   P a t h I n f o   i n s t a n c e   f o r   a   f i l e   r e f e r e n c e .   A   s y n o n y m   o f   ( ( < m a k e _ w i t h > ) ) 
 @ d e s c r i p t i o n 
 I f   a   P O S I X   p a t h   e n d i n g   w i t h   " / "   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   i t e m   i s   c o n s i d e r e d   a s   a   f o l d e r   i . e .   ( ( < i s _ f o l d e r > ) )   w i l l   r e t u r n   t r u e .  @ p a r a m   a _ p a t h   ( a l i a s ,   f u r l ,   t e x t   o f   P O S I X   p a t h )   
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o  	
	 i   6 9 I      ������ 0 make_with_posix   �� o      ���� 
0 a_path  ��  ��   L      I     ������ 0 make_with_pathtrans    o    ���� 
0 a_path   �� o    ���� *0 posixpathtranslator POSIXPathTranslator��  ��  
  l     ��������  ��  ��    i   : = I      ������ 0 make_with_pathtrans    o      ���� 
0 a_path   �� o      ���� 0 	pathtrans  ��  ��   k    [   l     ��!"��  ! &   log "start make_with_pathtrans"   " �## @   l o g   " s t a r t   m a k e _ w i t h _ p a t h t r a n s "  $%$ r     &'& n     ()( 1    ��
�� 
pcls) o     ���� 
0 a_path  ' o      ���� 0 a_class  % *+* r    	,-, m    ��
�� boovfals- o      ���� 0 is_text  + ./. Z   
 {01��20 E  
 343 J   
 55 676 m   
 ��
�� 
utxt7 898 m    ��
�� 
TEXT9 :��: m    ��
�� 
ctxt��  4 o    ���� 0 a_class  1 r    ;<; m    ��
�� boovtrue< o      ���� 0 is_text  ��  2 Z    {=>?@= =   ABA o    ���� 0 a_class  B m    ��
�� 
alis> r     (CDC n    &EFE I   ! &�G�~� 0 to_text  G H�}H o   ! "�|�| 
0 a_path  �}  �~  F o     !�{�{ 0 	pathtrans  D o      �z�z 
0 a_path  ? IJI E  + 1KLK J   + /MM NON m   + ,�y
�y 
fss O P�xP m   , -�w
�w 
furl�x  L o   / 0�v�v 0 a_class  J Q�uQ Q   4 URSTR r   7 AUVU n  7 ?WXW I   8 ?�tY�s�t 0 to_text  Y Z�rZ c   8 ;[\[ o   8 9�q�q 
0 a_path  \ m   9 :�p
�p 
alis�r  �s  X o   7 8�o�o 0 	pathtrans  V o      �n�n 
0 a_path  S R      �m�l�k
�m .ascrerr ****      � ****�l  �k  T k   I U]] ^_^ r   I Q`a` n  I Obcb I   J O�jd�i�j 0 to_text  d e�he o   J K�g�g 
0 a_path  �h  �i  c o   I J�f�f 0 	pathtrans  a o      �e�e 
0 a_path  _ f�df r   R Ughg m   R S�c
�c boovtrueh o      �b�b 0 is_text  �d  �u  @ k   X {ii jkj Q   X rlmnl r   [ `opo c   [ ^qrq o   [ \�a�a 
0 a_path  r m   \ ]�`
�` 
alisp o      �_�_ 
0 a_path  m R      �^�]�\
�^ .ascrerr ****      � ****�]  �\  n R   h r�[st
�[ .ascrerr ****      � ****s b   l quvu l  l ow�Z�Yw c   l oxyx o   l m�X�X 0 a_class  y m   m n�W
�W 
utxt�Z  �Y  v m   o pzz �{{ x   i s   u n s u p p o r t e d   d a t a   t y p e .   P a t h I n f o   c a n ' t   c o n v e r t   t o   a   p a t h .t �V|�U
�V 
errn| m   j k�T�T��U  k }�S} r   s {~~ n  s y��� I   t y�R��Q�R 0 to_text  � ��P� o   t u�O�O 
0 a_path  �P  �Q  � o   s t�N�N 0 	pathtrans   o      �M�M 
0 a_path  �S  / ��� r   | ���� n  | ���� I   } ��L��K�L 0 	decompose  � ��J� o   } ~�I�I 
0 a_path  �J  �K  � o   | }�H�H 0 	pathtrans  � o      �G�G 0 path_elements  � ��� r   � ���� n  � ���� I   � ��F��E�F 0 resolve_disk  � ��D� o   � ��C�C 0 path_elements  �D  �E  � o   � ��B�B 0 	pathtrans  � o      �A�A 
0 a_disk  � ��� Z   � ����@�?� H   � ��� o   � ��>�> 0 is_text  � r   � ���� n  � ���� I   � ��=��<�= 0 to_alias  � ��;� o   � ��:�: 
0 a_disk  �;  �<  � o   � ��9�9 0 	pathtrans  � o      �8�8 
0 a_disk  �@  �?  � ��� r   � ���� n  � ���� I   � ��7��6�7 0 item_at  � ��5� m   � ��4�4���5  �6  � o   � ��3�3 0 path_elements  � o      �2�2 
0 a_name  � ��� Z   �0���1�� =  � ���� o   � ��0�0 
0 a_name  � m   � ��� ���  � k   � ��� ��� r   � ���� m   � ��/
�/ boovtrue� o      �.�. 0 folder_flag  � ��� r   � ���� n  � ���� I   � ��-��,�- 0 item_at  � ��+� m   � ��*�*���+  �,  � o   � ��)�) 0 path_elements  � o      �(�( 
0 a_name  � ��'� Z   � ����&�� =  � ���� n  � ���� 1   � ��%
�% 
leng� o   � ��$�$ 0 path_elements  � m   � ��#�# � l  � ����� O   � ���� r   � ���� 1   � ��"
�" 
desk� o      �!�! 0 a_folder  � m   � ����                                                                                  MACS  alis    r  Macintosh HD               �:1�H+  1%i�
Finder.app                                                     1%�`Ƙ�q        ����  	                CoreServices    �9�S      ƘK�    1%i�1%i�1%i�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �   if a_path is disk   � ��� $   i f   a _ p a t h   i s   d i s k�&  � l  � ����� k   � ��� ��� r   � ���� n  � ���� I   � �� ���  0 compose  � ��� m   � ��� � ��� m   � ������ ��� m   � ��
� boovtrue�  �  � o   � ��� 0 path_elements  � o      �� 0 a_folder  � ��� Z   � ������ H   � ��� o   � ��� 0 is_text  � r   � ���� n  � ���� I   � ����� 0 to_alias  � ��� o   � ��� 0 a_folder  �  �  � o   � ��� 0 	pathtrans  � o      �� 0 a_folder  �  �  �  �   if a_path is folder   � ��� (   i f   a _ p a t h   i s   f o l d e r�'  �1  � k   �0�� ��� r   � ���� m   � ��
� boovfals� o      �� 0 folder_flag  � ��� Z   0����� ?   ��� n  ��� 1  �

�
 
leng� o   �	�	 0 path_elements  � m  �� � k  
(�� ��� r  
��� n 
��� I  ���� 0 compose  � ��� m  �� �    m  ���� � m  �
� boovtrue�  �  � o  
�� 0 path_elements  � o      � �  0 a_folder  � �� Z  (���� H   o  ���� 0 is_text   r  $ n "	
	 I  "������ 0 to_alias   �� o  ���� 0 a_folder  ��  ��  
 o  ���� 0 	pathtrans   o      ���� 0 a_folder  ��  ��  ��  �  � r  +0 m  +.��
�� 
msng o      ���� 0 a_folder  �  �  r  1J I      ������ 0 
split_name   �� o  23���� 
0 a_name  ��  ��   J        o      ���� 0 
a_basename   �� o      ���� 0 a_suffix  ��   �� L  K[ I  KZ������ 0 make_with_vars    o  LM���� 0 	pathtrans    o  MN���� 
0 a_disk    !  o  NO���� 0 a_folder  ! "#" o  OP���� 
0 a_name  # $%$ o  PQ���� 0 
a_basename  % &'& o  QR���� 0 a_suffix  ' ()( o  RS���� 0 folder_flag  ) *��* o  ST���� 
0 a_path  ��  ��  ��   +,+ l     ��������  ��  ��  , -.- i   > A/0/ I      ��1���� 0 make_with_opts  1 232 o      ���� 
0 a_path  3 4��4 K      55 ��6���� 0 prefering_posix  6 o      ���� 
0 a_bool  ��  ��  ��  0 k     77 898 Z     :;��<: o     ���� 
0 a_bool  ; r    =>= o    	���� *0 posixpathtranslator POSIXPathTranslator> o      ���� 0 	pathtrans  ��  < r    ?@? o    ���� &0 hfspathtranslator HFSPathTranslator@ o      ���� 0 	pathtrans  9 A��A L    BB I    ��C���� 0 make_with_pathtrans  C DED o    ���� 
0 a_path  E F��F o    ���� 0 	pathtrans  ��  ��  ��  . GHG l     ��������  ��  ��  H IJI i   B EKLK I      ��M���� 0 make_with_vars  M NON o      ���� 0 	pathtrans  O PQP o      ���� 
0 a_disk  Q RSR o      ���� 0 a_folder  S TUT o      ���� 
0 a_name  U VWV o      ���� 0 
a_basename  W XYX o      ���� 0 a_suffix  Y Z[Z o      ���� 0 folder_flag  [ \��\ o      ���� 
0 a_path  ��  ��  L k     
]] ^_^ h     ��`�� 0 pathinfo PathInfo` k      aa bcb j     ��d
�� 
pared o     ���� 0 	pathtrans  c efe j   	 ��g�� 	0 _disk  g o   	 ���� 
0 a_disk  f hih j    ��j�� 0 _folder  j o    ���� 0 a_folder  i klk j    ��m�� 	0 _name  m o    ���� 
0 a_name  l non j    $��p�� 0 	_basename  p o    #���� 0 
a_basename  o qrq j   % +��s�� 0 _path_extension  s o   % *���� 0 a_suffix  r tut j   , 2��v�� 0 
_is_folder  v o   , 1���� 0 folder_flag  u w��w j   3 9��x�� 0 	_item_ref  x o   3 8���� 
0 a_path  ��  _ y��y L    
zz o    	���� 0 pathinfo PathInfo��  J {|{ l     ��������  ��  ��  | }~} l      �����   &  !@group Obtain path information    � ��� @ ! @ g r o u p   O b t a i n   p a t h   i n f o r m a t i o n  ~ ��� l     ��������  ��  ��  � ��� l      ������  � H B!@abstruct 
Obtain a name of the file or the folder.@result text   � ��� � ! @ a b s t r u c t   
 O b t a i n   a   n a m e   o f   t h e   f i l e   o r   t h e   f o l d e r .  @ r e s u l t   t e x t � ��� i   F I��� I      �������� 0 	item_name  ��  ��  � L     �� n    ��� o    ���� 	0 _name  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � E ?!@abstruct 
Obtain a name without path extension.@result text   � ��� ~ ! @ a b s t r u c t   
 O b t a i n   a   n a m e   w i t h o u t   p a t h   e x t e n s i o n .  @ r e s u l t   t e x t � ��� i   J M��� I      �������� 0 basename  ��  ��  � L     �� n    ��� o    ���� 0 	_basename  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct 
Obtain a path extension of the file name. The result does not starts with ".".
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.@result text   � ���� ! @ a b s t r u c t   
 O b t a i n   a   p a t h   e x t e n s i o n   o f   t h e   f i l e   n a m e .   T h e   r e s u l t   d o e s   n o t   s t a r t s   w i t h   " . " . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n .  @ r e s u l t   t e x t � ��� i   N Q��� I      �������� 0 path_extension  ��  ��  � L     �� n    ��� o    ���� 0 _path_extension  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � ^ X!@abstruct Obtain the volume name of the item referenced by the instance.@result text   � ��� � ! @ a b s t r u c t    O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e .  @ r e s u l t   t e x t � ��� i   R U��� I      �������� 0 volume_name  ��  ��  � k     M�� ��� Z     ������� >    ��� n    ��� o    ���� 	0 _disk  �  f     � m    �� ���  /� r    ��� n   ��� I    �������� 0 	item_name  ��  ��  � I    ���~� 0 	make_with  � ��}� n  	 ��� o   
 �|�| 	0 _disk  �  f   	 
�}  �~  � o      �{�{ 0 a_result  ��  ��  � ��� l   �z���z  � : 4 if my _disk is an alias, item_name() will return ""   � ��� h   i f   m y   _ d i s k   i s   a n   a l i a s ,   i t e m _ n a m e ( )   w i l l   r e t u r n   " "� ��� Z    '���y�x� >   ��� o    �w�w 0 a_result  � m    �� ���  � L   ! #�� o   ! "�v�v 0 a_result  �y  �x  � ��� l  ( (�u�t�s�u  �t  �s  � ��� r   ( /��� I   ( -�r�q�p�r 0 hfs_path  �q  �p  � o      �o�o 
0 a_path  � ��� r   0 5��� n  0 3��� 1   1 3�n
�n 
txdl� 1   0 1�m
�m 
ascr� o      �l�l 0 tid  � ��� r   6 =��� J   6 9�� ��k� m   6 7�� ���  :�k  � n     ��� 1   : <�j
�j 
txdl� 1   9 :�i
�i 
ascr� ��� r   > D��� n   > B��� 4   ? B�h�
�h 
citm� m   @ A�g�g � o   > ?�f�f 
0 a_path  � o      �e�e 0 a_result  � ��� r   E J��� o   E F�d�d 0 tid  � n     ��� 1   G I�c
�c 
txdl� 1   F G�b
�b 
ascr� ��a� L   K M�� o   K L�`�` 0 a_result  �a  � ��� l     �_�^�]�_  �^  �]  � � � l      �\�\   j d!@abstruct 
Obtain a file reference to the folder containing the target.@result an alias or a path    � � ! @ a b s t r u c t   
 O b t a i n   a   f i l e   r e f e r e n c e   t o   t h e   f o l d e r   c o n t a i n i n g   t h e   t a r g e t .  @ r e s u l t   a n   a l i a s   o r   a   p a t h    i   V Y I      �[�Z�Y�[ 0 
folder_ref  �Z  �Y   L      n    	
	 o    �X�X 0 _folder  
  f       l     �W�V�U�W  �V  �U    l      �T�T   � �!@abstruct 
Whether the target is a folder or not.
@description
If given path ends with a path delimiter, true will be returned wtihout checking file system. Therefor a wrong result may be returned.@result boolean    �� ! @ a b s t r u c t   
 W h e t h e r   t h e   t a r g e t   i s   a   f o l d e r   o r   n o t . 
 @ d e s c r i p t i o n 
 I f   g i v e n   p a t h   e n d s   w i t h   a   p a t h   d e l i m i t e r ,   t r u e   w i l l   b e   r e t u r n e d   w t i h o u t   c h e c k i n g   f i l e   s y s t e m .   T h e r e f o r   a   w r o n g   r e s u l t   m a y   b e   r e t u r n e d .  @ r e s u l t   b o o l e a n   i   Z ] I      �S�R�Q�S 0 	is_folder  �R  �Q   L      n     o    �P�P 0 
_is_folder    f       l     �O�N�M�O  �N  �M    l      �L�L   m g!@abstruct 
Obtain an internal file reference which the target contains.@result alias or text of path    � � ! @ a b s t r u c t   
 O b t a i n   a n   i n t e r n a l   f i l e   r e f e r e n c e   w h i c h   t h e   t a r g e t   c o n t a i n s .  @ r e s u l t   a l i a s   o r   t e x t   o f   p a t h   !  i   ^ a"#" I      �K�J�I�K 0 item_ref  �J  �I  # L     $$ n    %&% o    �H�H 0 	_item_ref  &  f     ! '(' l     �G�F�E�G  �F  �E  ( )*) l      �D+,�D  + � �!@abstruct 
Whether an item exits in the file sysem or not.
@description
If the target exsits, the internal file reference is converted to an alias.@result boolean   , �--J ! @ a b s t r u c t   
 W h e t h e r   a n   i t e m   e x i t s   i n   t h e   f i l e   s y s e m   o r   n o t . 
 @ d e s c r i p t i o n 
 I f   t h e   t a r g e t   e x s i t s ,   t h e   i n t e r n a l   f i l e   r e f e r e n c e   i s   c o n v e r t e d   t o   a n   a l i a s .  @ r e s u l t   b o o l e a n * ./. i   b e010 I      �C�B�A�C 0 item_exists  �B  �A  1 k     522 343 Q     256�@5 k    )77 898 r    :;: I    �?<�>�? 0 to_alias  < =�== I    �<>�;�< 0 to_text  > ?�:? n   @A@ o    �9�9 0 	_item_ref  A  f    �:  �;  �=  �>  ; n     BCB o    �8�8 0 	_item_ref  C  f    9 DED r    &FGF I    "�7H�6�7 0 to_alias  H I�5I I    �4J�3�4 0 to_text  J K�2K n   LML o    �1�1 0 _folder  M  f    �2  �3  �5  �6  G n     NON o   # %�0�0 0 _folder  O  f   " #E P�/P L   ' )QQ m   ' (�.
�. boovtrue�/  6 R      �-�,�+
�- .ascrerr ****      � ****�,  �+  �@  4 R�*R L   3 5SS m   3 4�)
�) boovfals�*  / TUT l     �(�'�&�(  �'  �&  U VWV l      �%XY�%  X � �!@abstruct 
Whether an item exits in the file sysem or not.
@description
The internal file reference will not be changed unlike ((<item_exists>)). @result boolean   Y �ZZH ! @ a b s t r u c t   
 W h e t h e r   a n   i t e m   e x i t s   i n   t h e   f i l e   s y s e m   o r   n o t . 
 @ d e s c r i p t i o n 
 T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .    @ r e s u l t   b o o l e a n W [\[ i   f i]^] I      �$�#�"�$ 0 item_exists_without_update  �#  �"  ^ k     __ `a` Q     bc�!b k    dd efe I    � g��  0 to_alias  g h�h I    �i�� 0 to_text  i j�j n   klk o    �� 0 	_item_ref  l  f    �  �  �  �  f m�m L    nn m    �
� boovtrue�  c R      ���
� .ascrerr ****      � ****�  �  �!  a o�o L    pp m    �
� boovfals�  \ qrq l     ����  �  �  r sts l      �uv�  u n h!@abstruct 
If ((<child>)) and ((<change_folder>)) prefer posix path, true is returned.
@result boolean   v �ww � ! @ a b s t r u c t   
 I f   ( ( < c h i l d > ) )   a n d   ( ( < c h a n g e _ f o l d e r > ) )   p r e f e r   p o s i x   p a t h ,   t r u e   i s   r e t u r n e d . 
 @ r e s u l t   b o o l e a n t xyx i   j mz{z I      ���� 0 is_posix  �  �  { L     || =    }~} n    � o    �� 0 
_delimiter  �  f     ~ m    �� ���  /y ��� l     �
�	��
  �	  �  � ��� l      ����  � ( "!@group Converting reference form    � ��� D ! @ g r o u p   C o n v e r t i n g   r e f e r e n c e   f o r m  � ��� l     ����  �  �  � ��� l      ����  � � ~!@abstruct Obtain a file reference as alias.
@description
If failed to coerce to an alias, an error will raise.@result alias   � ��� � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   a l i a s . 
 @ d e s c r i p t i o n 
 I f   f a i l e d   t o   c o e r c e   t o   a n   a l i a s ,   a n   e r r o r   w i l l   r a i s e .  @ r e s u l t   a l i a s � ��� i   n q��� I      ��� � 0 as_alias  �  �   � k     7�� ��� Z     1������� >    ��� n     ��� 1    ��
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
0 a_path  ��  � ��� l     ��������  ��  ��  � ��� l      �� ��    [ U!@syntax hfs_path()
@abstruct Obtain a file reference as HFS path form.@result text    � � ! @ s y n t a x   h f s _ p a t h ( ) 
 @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   H F S   p a t h   f o r m .  @ r e s u l t   t e x t �  l     ��������  ��  ��    l      ����   � �!@syntax as_text()
@abstruct Obtain a path text.@result text of HFS path or POSX path. The path form follows the path form passed to ((<make_with>)).    �		. ! @ s y n t a x   a s _ t e x t ( ) 
 @ a b s t r u c t   O b t a i n   a   p a t h   t e x t .  @ r e s u l t   t e x t   o f   H F S   p a t h   o r   P O S X   p a t h .   T h e   p a t h   f o r m   f o l l o w s   t h e   p a t h   f o r m   p a s s e d   t o   ( ( < m a k e _ w i t h > ) ) .  

 l     ��������  ��  ��    l     ��������  ��  ��    l      ����   6 0!@group Making a new instance from the instance     � ` ! @ g r o u p   M a k i n g   a   n e w   i n s t a n c e   f r o m   t h e   i n s t a n c e    l     ��������  ��  ��    l      ����    y!@abstruct 
Obtain an instance of PathInfo referencing the folder containing the target.@result an instance of PathInfo    � � ! @ a b s t r u c t   
 O b t a i n   a n   i n s t a n c e   o f   P a t h I n f o   r e f e r e n c i n g   t h e   f o l d e r   c o n t a i n i n g   t h e   t a r g e t .  @ r e s u l t   a n   i n s t a n c e   o f   P a t h I n f o   i   ~ � I      �������� 0 parent_folder  ��  ��   L      I     ������ 0 make_with_opts    !  I    �������� 0 
folder_ref  ��  ��  ! "��" K    ## ��$���� 0 prefering_posix  $ I    �������� 0 is_posix  ��  ��  ��  ��  ��   %&% l     ��������  ��  ��  & '(' l      ��)*��  ) � �!@abstruct
Make a new PathInfo changing the item name.
@param a_name (text) : An item name@result script object : A new instance of PathInfo   * �++ ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   i t e m   n a m e . 
 @ p a r a m   a _ n a m e   ( t e x t )   :   A n   i t e m   n a m e  @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o ( ,-, i   � �./. I      ��0���� 0 change_name  0 1��1 o      ���� 
0 a_name  ��  ��  / k     =22 343 r     565 I      ��7���� 0 
split_name  7 8��8 o    ���� 
0 a_name  ��  ��  6 J      99 :;: o      ���� 0 
a_basename  ; <��< o      ���� 0 a_suffix  ��  4 =��= O    =>?> k    <@@ ABA r    #CDC o    ���� 
0 a_name  D n     EFE o     "���� 	0 _name  F  g     B GHG r   $ )IJI o   $ %���� 0 
a_basename  J n     KLK o   & (���� 0 	_basename  L  g   % &H MNM r   * /OPO o   * +���� 0 a_suffix  P n     QRQ o   , .���� 0 _path_extension  R  g   + ,N STS r   0 9UVU I   0 5�������� 0 
build_path  ��  ��  V n     WXW o   6 8���� 0 	_item_ref  X  g   5 6T Y��Y L   : <ZZ  g   : ;��  ? I    �������� 	0 clone  ��  ��  ��  - [\[ l     �������  ��  �  \ ]^] l      �~_`�~  _ � �!@abstruct
Make a new PathInfo changing the path extension
@param a_text (text) : A path extension. It should not start with &quot;.&quot;.@result script object : a new instance of PathInfo   ` �aa~ ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   p a t h   e x t e n s i o n 
 @ p a r a m   a _ t e x t   ( t e x t )   :   A   p a t h   e x t e n s i o n .   I t   s h o u l d   n o t   s t a r t   w i t h   & q u o t ; . & q u o t ; .  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   P a t h I n f o ^ bcb i   � �ded I      �}f�|�} 0 change_path_extension  f g�{g o      �z�z 
0 a_text  �{  �|  e O     7hih k    6jj klk r    mnm o    	�y�y 
0 a_text  n n     opo o   
 �x�x 0 _path_extension  p  g   	 
l qrq Z    )st�wus =   vwv o    �v�v 
0 a_text  w m    �u
�u 
msngt r    xyx n   z{z o    �t�t 0 	_basename  {  g    y n     |}| o    �s�s 	0 _name  }  g    �w  u r    )~~ b    %��� b    #��� n   !��� o    !�r�r 0 	_basename  �  g    � m   ! "�� ���  .� o   # $�q�q 
0 a_text   n     ��� o   & (�p�p 	0 _name  �  g   % &r ��� r   * 3��� I   * /�o�n�m�o 0 
build_path  �n  �m  � n     ��� o   0 2�l�l 0 	_item_ref  �  g   / 0� ��k� L   4 6��  g   4 5�k  i I     �j�i�h�j 	0 clone  �i  �h  c ��� l     �g�f�e�g  �f  �e  � ��� l      �d���d  ���!@abstruct
Make a new PathInfo changing the folder.
@description
The path form for a parameter must keep consistency with a path passed to the constructor method. If the target was constucted by ((<make_with_posix>)). The path form must be POSIX. If the target was constructed by ((<make_with_hfs>)), the path form must be HFS.
@param a_folder (alias, furl, POSIX path or HFS path) : A reference to a folder@result script object : A new instance of PathInfo   � ���� ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   f o l d e r . 
 @ d e s c r i p t i o n 
 T h e   p a t h   f o r m   f o r   a   p a r a m e t e r   m u s t   k e e p   c o n s i s t e n c y   w i t h   a   p a t h   p a s s e d   t o   t h e   c o n s t r u c t o r   m e t h o d .   I f   t h e   t a r g e t   w a s   c o n s t u c t e d   b y   ( ( < m a k e _ w i t h _ p o s i x > ) ) .   T h e   p a t h   f o r m   m u s t   b e   P O S I X .   I f   t h e   t a r g e t   w a s   c o n s t r u c t e d   b y   ( ( < m a k e _ w i t h _ h f s > ) ) ,   t h e   p a t h   f o r m   m u s t   b e   H F S . 
 @ p a r a m   a _ f o l d e r   ( a l i a s ,   f u r l ,   P O S I X   p a t h   o r   H F S   p a t h )   :   A   r e f e r e n c e   t o   a   f o l d e r  @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o � ��� i   � ���� I      �c��b�c 0 change_folder  � ��a� o      �`�` 0 a_folder  �a  �b  � k     H�� ��� Z     &���_�^� F     ��� l    	��]�\� E    	��� J     �� ��� m     �[
�[ 
ctxt� ��� m    �Z
�Z 
utxt� ��Y� m    �X
�X 
TEXT�Y  � n    ��� 1    �W
�W 
pcls� o    �V�V 0 a_folder  �]  �\  � l   ��U�T� H    �� D    ��� o    �S�S 0 a_folder  � I    �R�Q�P�R 0 	delimiter  �Q  �P  �U  �T  � r    "��� b     ��� o    �O�O 0 a_folder  � I    �N�M�L�N 0 	delimiter  �M  �L  � o      �K�K 0 a_folder  �_  �^  � ��J� O   ' H��� k   / G�� ��� r   / 4��� o   / 0�I�I 0 a_folder  � n     ��� o   1 3�H�H 0 _folder  �  g   0 1� ��� r   5 :��� m   5 6�G
�G 
msng� n     ��� o   7 9�F�F 	0 _disk  �  g   6 7� ��� r   ; D��� I   ; @�E�D�C�E 0 
build_path  �D  �C  � n     ��� o   A C�B�B 0 	_item_ref  �  g   @ A� ��A� L   E G��  g   E F�A  � I   ' ,�@�?�>�@ 	0 clone  �?  �>  �J  � ��� l     �=�<�;�=  �<  �;  � ��� l      �:���:  ���!@abstruct
Make a new PathInfo appending a sub path.
@description
The path form for a parameter must keep consistency with a path passed to the constructor method. If the target was constucted by ((<make_with_posix>)). The path form must be POSIX. If the target was constructed by ((<make_with_hfs>)), the path form must be HFS.
@param subpath (text)  : A relative path from the target.@result script object : a new instance of PathInfo   � ���l ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   a p p e n d i n g   a   s u b   p a t h . 
 @ d e s c r i p t i o n 
 T h e   p a t h   f o r m   f o r   a   p a r a m e t e r   m u s t   k e e p   c o n s i s t e n c y   w i t h   a   p a t h   p a s s e d   t o   t h e   c o n s t r u c t o r   m e t h o d .   I f   t h e   t a r g e t   w a s   c o n s t u c t e d   b y   ( ( < m a k e _ w i t h _ p o s i x > ) ) .   T h e   p a t h   f o r m   m u s t   b e   P O S I X .   I f   t h e   t a r g e t   w a s   c o n s t r u c t e d   b y   ( ( < m a k e _ w i t h _ h f s > ) ) ,   t h e   p a t h   f o r m   m u s t   b e   H F S . 
 @ p a r a m   s u b p a t h   ( t e x t )     :   A   r e l a t i v e   p a t h   f r o m   t h e   t a r g e t .  @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   P a t h I n f o � ��� i   � ���� I      �9��8�9 	0 child  � ��7� o      �6�6 0 subpath  �7  �8  � k     2�� ��� r     ��� I     �5�4�3�5 0 as_text  �4  �3  � o      �2�2 
0 a_path  � ��� Z     ���1�0� H    �� D    ��� o    	�/�/ 
0 a_path  � I   	 �.�-�,�. 0 	delimiter  �-  �,  � r    ��� b    ��� o    �+�+ 
0 a_path  � I    �*�)�(�* 0 	delimiter  �)  �(  � o      �'�' 
0 a_path  �1  �0  � ��&� L   ! 2�� I   ! 1�%��$�% 0 make_with_opts  � ��� b   " %��� o   " #�#�# 
0 a_path  � o   # $�"�" 0 subpath  � ��!� K   % -�� � ���  0 prefering_posix  � I   & +���� 0 is_posix  �  �  �  �!  �$  �&  � ��� l     ����  �  �  � ��� l      ����  � � z!@abstruct
Make a new PathInfo which refering the same file to the target.
@result script object : a instance of PathInfo
   � ��� � ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   w h i c h   r e f e r i n g   t h e   s a m e   f i l e   t o   t h e   t a r g e t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   i n s t a n c e   o f   P a t h I n f o 
� � � i   � � I      ���� 	0 clone  �  �   L      I     ��� 0 make_with_vars    1    �
� 
pare  n   	
	 o    �� 	0 _disk  
  f      n   
 o    
�� 0 _folder    f      n  
  o    �� 	0 _name    f   
   n    o    �� 0 	_basename    f      n    o    �� 0 _path_extension    f      n    o    �� 0 
_is_folder    f     � n    !  o    �
�
 0 	_item_ref  !  f    �  �    "#" l     �	���	  �  �  # $%$ l      �&'�  &  	 private    ' �((    p r i v a t e  % )*) i   � �+,+ I      ���� 0 
build_path  �  �  , k     @-- ./. Z     01�20 =    343 n    565 o    �� 0 _path_extension  6  f     4 m    � 
�  
msng1 r    787 n   9:9 o   	 ���� 	0 _name  :  f    	8 o      ���� 
0 a_name  �  2 r    ;<; l   =����= b    >?> b    @A@ n   BCB o    ���� 0 	_basename  C  f    A m    DD �EE  .? n   FGF o    ���� 0 _path_extension  G  f    ��  ��  < o      ���� 
0 a_name  / HIH Z    0JK����J n    LML o    ���� 0 
_is_folder  M  f    K r   # ,NON b   # *PQP o   # $���� 
0 a_name  Q I   $ )�������� 0 	delimiter  ��  ��  O o      ���� 
0 a_name  ��  ��  I RSR r   1 ;TUT I   1 9��V���� 0 to_text  V W��W n  2 5XYX o   3 5���� 0 _folder  Y  f   2 3��  ��  U o      ���� 0 folder_path  S Z��Z L   < @[[ b   < ?\]\ o   < =���� 0 folder_path  ] o   = >���� 
0 a_name  ��  * ^_^ l     ��������  ��  ��  _ `a` l      ��bc��  b    methods for PathElements    c �dd 4   m e t h o d s   f o r   P a t h E l e m e n t s  a efe i   � �ghg I      ��i���� 0 item_at  i j��j o      ���� 0 n  ��  ��  h L     kk n    lml n   non 4    ��p
�� 
cobjp o    ���� 0 n  o o    ���� 0 	_contents  m  f     f qrq l     ��������  ��  ��  r sts i   � �uvu I      ��w���� 0 compose  w xyx o      ���� 0 n1  y z{z o      ���� 0 n2  { |��| o      ���� 0 folder_flag  ��  ��  v k     :}} ~~ r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 tid   ��� r    ��� J    �� ���� n   	��� o    	���� 0 
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
ascr� ���� L   8 :�� o   8 9���� 0 a_result  ��  t ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 make_path_elements  � ���� o      ���� 
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
0 a_list  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 	delimiter  ��  ��  � L     �� n    ��� o    ���� 0 
_delimiter  �  f     � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 set_name  � ���� o      ���� 
0 a_name  ��  ��  � k     :��    r      I      ������ 0 
split_name   �� o    �� 
0 a_name  ��  ��   J        n     	
	 o    �~�~ 0 	_basename  
  f     �} n      o    �|�| 0 _path_extension    f    �}    r     o    �{�{ 
0 a_name   n      o    �z�z 	0 _name    f      Z     7�y�x >    ' n     % 1   # %�w
�w 
pcls n    # o   ! #�v�v 0 	_item_ref    f     ! m   % &�u
�u 
alis r   * 3 I   * /�t�s�r�t 0 
build_path  �s  �r   n      !  o   0 2�q�q 0 	_item_ref  !  g   / 0�y  �x   "�p" L   8 :##  f   8 9�p  � $%$ l     �o�n�m�o  �n  �m  % &'& l      �l()�l  (!@group Error Numbers and Error Messages
* number : 980
	* message : Unknown data type. PathInfo can't convert to a path.	* Raise when a parameter passed to ((<make_with>)), ((<make_with_hfs>)), ((<make_with_posix>)),((<change_folder>)) can not be treated as a file reference.   ) �**, ! @ g r o u p   E r r o r   N u m b e r s   a n d   E r r o r   M e s s a g e s 
 *   n u m b e r   :   9 8 0 
 	 *   m e s s a g e   :   U n k n o w n   d a t a   t y p e .   P a t h I n f o   c a n ' t   c o n v e r t   t o   a   p a t h .  	 *   R a i s e   w h e n   a   p a r a m e t e r   p a s s e d   t o   ( ( < m a k e _ w i t h > ) ) ,   ( ( < m a k e _ w i t h _ h f s > ) ) ,   ( ( < m a k e _ w i t h _ p o s i x > ) ) , ( ( < c h a n g e _ f o l d e r > ) )   c a n   n o t   b e   t r e a t e d   a s   a   f i l e   r e f e r e n c e . ' +,+ l     �k�j�i�k  �j  �i  , -.- i   � �/0/ I     �h�g�f
�h .aevtoappnull  �   � ****�g  �f  0 k     11 232 l     �e45�e  4  return debug()   5 �66  r e t u r n   d e b u g ( )3 7�d7 Q     89:8 I   �c;<
�c .HBsushHBTEXT    ��� file; l   =�b�a= I   �`>�_
�` .earsffdralis        afdr>  f    �_  �b  �a  < �^?�]
�^ 
rcIP? m   	 
�\
�\ boovtrue�]  9 R      �[@A
�[ .ascrerr ****      � ****@ o      �Z�Z 0 msg  A �YB�X
�Y 
errnB o      �W�W 	0 errno  �X  : I   �VC�U
�V .sysodisAaleR        TEXTC l   D�T�SD b    EFE b    GHG o    �R�R 0 msg  H o    �Q
�Q 
ret F o    �P�P 	0 errno  �T  �S  �U  �d  . IJI l     �O�N�M�O  �N  �M  J KLK i   � �MNM I      �L�K�J�L 	0 debug  �K  �J  N k     &OO PQP l     �IRS�I  R ! boot (module loader) for me   S �TT 6 b o o t   ( m o d u l e   l o a d e r )   f o r   m eQ UVU l     �H�G�F�H  �G  �F  V WXW l     �EYZ�E  Y ~ xset a_path to "/Volumes/Macintosh HD/Users/tkurita/Dev/Projects/TeX Tools for mi/�T���v��/insert-file/sample-figure.pdf"   Z �[[ � s e t   a _ p a t h   t o   " / V o l u m e s / M a c i n t o s h   H D / U s e r s / t k u r i t a / D e v / P r o j e c t s / T e X   T o o l s   f o r   m i /0�0�0�0� / i n s e r t - f i l e / s a m p l e - f i g u r e . p d f "X \]\ l     �D^_�D  ^ K Eset a_path to "Macintosh HD:Users:tkurita:BackdropUserBackground.png"   _ �`` � s e t   a _ p a t h   t o   " M a c i n t o s h   H D : U s e r s : t k u r i t a : B a c k d r o p U s e r B a c k g r o u n d . p n g "] aba l     �Ccd�C  c Q Kset a_path to alias "Macintosh HD:Users:tkurita:BackdropUserBackground.png"   d �ee � s e t   a _ p a t h   t o   a l i a s   " M a c i n t o s h   H D : U s e r s : t k u r i t a : B a c k d r o p U s e r B a c k g r o u n d . p n g "b fgf r     hih c     jkj m     ll �mm R / U s e r s / t k u r i t a / B a c k d r o p U s e r B a c k g r o u n d . p n gk m    �B
�B 
psxfi o      �A�A 
0 a_path  g non l   �@pq�@  p ? 9set a_path to "/Users/tkurita/BackdropUserBackground.png"   q �rr r s e t   a _ p a t h   t o   " / U s e r s / t k u r i t a / B a c k d r o p U s e r B a c k g r o u n d . p n g "o sts L    uu n   vwv I    �?�>�=�? 0 volume_name  �>  �=  w I    �<x�;�< 0 	make_with  x y�:y o    �9�9 
0 a_path  �:  �;  t z{z r    |}| 4    �8~
�8 
alis~ m     ���  M a c i n t o s h   H D} o      �7�7 
0 a_path  { ��� L    $�� n   #��� I    #�6�5�4�6 0 	item_name  �5  �4  � I    �3��2�3 0 	make_with  � ��1� o    �0�0 
0 a_path  �1  �2  � ��/� l  % %�.�-�,�.  �-  �,  �/  L ��� l     �+�*�)�+  �*  �)  � ��(� l     �'�&�%�'  �&  �%  �(       /�$�  ��������������������������������������������$  � -�#�"�!� ����������������������
�	��������� ������������������
�# 
pnam
�" 
vers�! 0 name_of  �  0 basename_of  � 0 path_extension_of  � 0 	suffix_of  � 0 
split_name  � 0 	folder_of  � *0 posixpathtranslator POSIXPathTranslator� &0 hfspathtranslator HFSPathTranslator� 0 	make_with  � 0 make_with_hfs  � 0 make_with_posix  � 0 make_with_pathtrans  � 0 make_with_opts  � 0 make_with_vars  � 0 	item_name  � 0 basename  � 0 path_extension  � 0 volume_name  � 0 
folder_ref  � 0 	is_folder  � 0 item_ref  � 0 item_exists  � 0 item_exists_without_update  �
 0 is_posix  �	 0 as_alias  � 0 as_furl  � 0 
posix_path  � 0 normalized_posix_path  � 0 parent_folder  � 0 change_name  � 0 change_path_extension  � 0 change_folder  � 	0 child  �  	0 clone  �� 0 
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
alis�� ��&�&� �� ����������� 0 resolve_disk  �� ����� �  ���� 0 path_elements  ��  � �������� 0 path_elements  �� 0 n_elems  �� 
0 a_disk  � ��������+/
�� 
leng�� 0 item_at  
�� 
bool�� 0 compose  �� 9��,E�O�k	 �lk+ � �& �l �kmem+ E�Y �E�Y �E�O�� ��8���������� 0 hfs_path  ��  ��  �  � ���������� 0 	_item_ref  
�� 
psxp
�� 
psxf
�� 
utxt�� )�,�,�&�&� ��H���������� 0 as_text  ��  ��  �  � ������ 0 	_item_ref  
�� 
psxp�� )�,�,E� ��R  ��� &0 hfspathtranslator HFSPathTranslator�  �W������ ������������� 0 
_delimiter  �� 0 to_text  �� 0 to_alias  �� 0 resolve_disk  �� 0 hfs_path  � 0 as_text  � �~^�}�|���{�~ 0 to_text  �} �z��z �  �y�y 
0 a_file  �|  � �x�x 
0 a_file  � �w
�w 
utxt�{ ��&� �vi�u�t���s�v 0 to_alias  �u �r��r �  �q�q 
0 a_file  �t  � �p�p 
0 a_file  � �o
�o 
alis�s ��&� �nt�m�l���k�n 0 resolve_disk  �m �j��j �  �i�i 0 path_elements  �l  � �h�h 0 path_elements  � �g�g 0 item_at  �k �kk+  b   %� �f��e�d���c�f 0 hfs_path  �e  �d  �  � �b�a�b 0 	_item_ref  
�a 
utxt�c )�,�&� �`��_�^���]�` 0 as_text  �_  �^  �  � �\�[�\ 0 	_item_ref  
�[ 
utxt�] )�,�&� �Z��Y�X���W�Z 0 	make_with  �Y �V��V �  �U�U 
0 a_path  �X  � �T�S�R�Q�T 
0 a_path  �S 0 a_class  �R 0 hf  �Q 0 	pathtrans  � �P�O�N�M��L�K�J�I��H
�P 
pcls
�O 
ctxt
�N 
utxt
�M 
TEXT
�L afdrcusr
�K .earsffdralis        afdr
�J 
psxp
�I 
leng�H 0 make_with_pathtrans  �W s��,E�O���mv� T�� 4�j �,E�O��,l ��[�\[Zm\Zi2%E�Y �E�Ob  E�Y �� b  E�Y 	b  	E�Y 	b  E�O*��l+ 
� �G��F�E���D�G 0 make_with_hfs  �F �C��C �  �B�B 
0 a_path  �E  � �A�A 
0 a_path  � �@�@ 0 make_with_pathtrans  �D *�b  	l+  � �?�>�=���<�? 0 make_with_posix  �> �;��; �  �:�: 
0 a_path  �=  � �9�9 
0 a_path  � �8�8 0 make_with_pathtrans  �< *�b  l+  � �7�6�5���4�7 0 make_with_pathtrans  �6 �3��3 �  �2�1�2 
0 a_path  �1 0 	pathtrans  �5  � �0�/�.�-�,�+�*�)�(�'�&�0 
0 a_path  �/ 0 	pathtrans  �. 0 a_class  �- 0 is_text  �, 0 path_elements  �+ 
0 a_disk  �* 
0 a_name  �) 0 folder_flag  �( 0 a_folder  �' 0 
a_basename  �& 0 a_suffix  � �%�$�#�"�!� ������z����������������
�% 
pcls
�$ 
utxt
�# 
TEXT
�" 
ctxt
�! 
alis�  0 to_text  
� 
fss 
� 
furl�  �  
� 
errn��� 0 	decompose  � 0 resolve_disk  � 0 to_alias  � 0 item_at  ���
� 
leng
� 
desk���� 0 compose  
� 
msng� 0 
split_name  
� 
cobj� � 0 make_with_vars  �4\��,E�OfE�O���mv� eE�Y c��  ��k+ E�Y R��lv� & ���&k+ E�W X  	��k+ E�OeE�Y % 
��&E�W X  	)��l��&�%O��k+ E�O��k+ E�O��k+ E�O� ��k+ E�Y hO�ik+ E�O�a   MeE�O�a k+ E�O�a ,l  a  	*a ,E�UY  �ka em+ E�O� ��k+ E�Y hY 6fE�O�a ,k #�ka em+ E�O� ��k+ E�Y hY a E�O*�k+ E[a k/E�Z[a l/E�ZO*��������a + � �0�
�	���� 0 make_with_opts  �
 � �    �� 
0 a_path   ���� 0 prefering_posix  � 
0 a_bool  �  �	  � ��� � 
0 a_path  � 
0 a_bool  �  0 	pathtrans  � ���� 0 make_with_pathtrans  � � b  E�Y 	b  	E�O*��l+  � ��L�������� 0 make_with_vars  �� ����   ������������������ 0 	pathtrans  �� 
0 a_disk  �� 0 a_folder  �� 
0 a_name  �� 0 
a_basename  �� 0 a_suffix  �� 0 folder_flag  �� 
0 a_path  ��   	�������������������� 0 	pathtrans  �� 
0 a_disk  �� 0 a_folder  �� 
0 a_name  �� 0 
a_basename  �� 0 a_suffix  �� 0 folder_flag  �� 
0 a_path  �� 0 pathinfo PathInfo ��`�� 0 pathinfo PathInfo ��������
�� .ascrinit****      � **** k     9		 b

 e h k n q t w����  ��  ��   ����������������
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
citm�� N)�,� *)�,k+ j+ E�Y hO�� �Y hO*j+ E�O��,E�O�kv��,FO��k/E�O���,FO�� ���������� 0 
folder_ref  ��  ��     ���� 0 _folder  �� )�,E� ���������� 0 	is_folder  ��  ��     ���� 0 
_is_folder  �� )�,E� ��#�������� 0 item_ref  ��  ��     ���� 0 	_item_ref  �� )�,E� ��1���� ���� 0 item_exists  ��  ��      �������������� 0 	_item_ref  �� 0 to_text  �� 0 to_alias  �� 0 _folder  ��  ��  �� 6 +**)�,k+ k+ )�,FO**)�,k+ k+ )�,FOeW X  hOf� ��^����!"���� 0 item_exists_without_update  ��  ��  !  " ������������ 0 	_item_ref  �� 0 to_text  �� 0 to_alias  ��  ��  ��   **)�,k+ k+ OeW X  hOf� ��{����#$���� 0 is_posix  ��  ��  #  $ ����� 0 
_delimiter  �� )�,� � �������%&���� 0 as_alias  ��  ��  %  & �������������� 0 	_item_ref  
�� 
pcls
�� 
alis�� 0 to_text  �� 0 to_alias  �� 0 _folder  �� 8)�,�,� (**)�,k+ k+ )�,FO**)�,k+ k+ )�,FY hO)�,E� �������'(���� 0 as_furl  ��  ��  '  ( ����� 0 	_item_ref  
� 
furl�� )�,�&� �~��}�|)*�{�~ 0 
posix_path  �}  �|  )  * �z�y�z 0 	_item_ref  
�y 
psxp�{ )�,�,E� �x��w�v+,�u�x 0 normalized_posix_path  �w  �v  + �t�t 
0 a_path  , �s��r�q�s 0 
posix_path  
�r 
ctxt�q���u #*j+  E�O�� �[�\[Zk\Z�2E�Y hO�� �p�o�n-.�m�p 0 parent_folder  �o  �n  -  . �l�k�j�i�l 0 
folder_ref  �k 0 prefering_posix  �j 0 is_posix  �i 0 make_with_opts  �m **j+  �*j+ ll+ � �h/�g�f/0�e�h 0 change_name  �g �d1�d 1  �c�c 
0 a_name  �f  / �b�a�`�b 
0 a_name  �a 0 
a_basename  �` 0 a_suffix  0 �_�^�]�\�[�Z�Y�X�_ 0 
split_name  
�^ 
cobj�] 	0 clone  �\ 	0 _name  �[ 0 	_basename  �Z 0 _path_extension  �Y 0 
build_path  �X 0 	_item_ref  �e >*�k+  E[�k/E�Z[�l/E�ZO*j+   �*�,FO�*�,FO�*�,FO*j+ *�,FO*U� �We�V�U23�T�W 0 change_path_extension  �V �S4�S 4  �R�R 
0 a_text  �U  2 �Q�Q 
0 a_text  3 �P�O�N�M�L��K�J�P 	0 clone  �O 0 _path_extension  
�N 
msng�M 0 	_basename  �L 	0 _name  �K 0 
build_path  �J 0 	_item_ref  �T 8*j+   0�*�,FO��  *�,*�,FY *�,�%�%*�,FO*j+ *�,FO*U� �I��H�G56�F�I 0 change_folder  �H �E7�E 7  �D�D 0 a_folder  �G  5 �C�C 0 a_folder  6 �B�A�@�?�>�=�<�;�:�9�8�7
�B 
ctxt
�A 
utxt
�@ 
TEXT
�? 
pcls�> 0 	delimiter  
�= 
bool�< 	0 clone  �; 0 _folder  
�: 
msng�9 	0 _disk  �8 0 
build_path  �7 0 	_item_ref  �F I���mv��,	 �*j+ �& �*j+ %E�Y hO*j+  �*�,FO�*�,FO*j+ 
*�,FO*U� �6��5�489�3�6 	0 child  �5 �2:�2 :  �1�1 0 subpath  �4  8 �0�/�0 0 subpath  �/ 
0 a_path  9 �.�-�,�+�*�. 0 as_text  �- 0 	delimiter  �, 0 prefering_posix  �+ 0 is_posix  �* 0 make_with_opts  �3 3*j+  E�O�*j+  �*j+ %E�Y hO*��%�*j+ ll+ � �)�(�';<�&�) 	0 clone  �(  �'  ;  < 
�%�$�#�"�!� ����
�% 
pare�$ 	0 _disk  �# 0 _folder  �" 	0 _name  �! 0 	_basename  �  0 _path_extension  � 0 
_is_folder  � 0 	_item_ref  � � 0 make_with_vars  �& **�,)�,)�,)�,)�,)�,)�,)�,�+ 	� �,��=>�� 0 
build_path  �  �  = ��� 
0 a_name  � 0 folder_path  > 	����D����� 0 _path_extension  
� 
msng� 	0 _name  � 0 	_basename  � 0 
_is_folder  � 0 	delimiter  � 0 _folder  � 0 to_text  � A)�,�  
)�,E�Y )�,�%)�,%E�O)�,E �*j+ %E�Y hO*)�,k+ E�O��%� �h��?@�
� 0 item_at  � �	A�	 A  �� 0 n  �  ? �� 0 n  @ ��� 0 	_contents  
� 
cobj�
 	)�,�/E� �v��BC�� 0 compose  � � D�  D  �������� 0 n1  �� 0 n2  �� 0 folder_flag  �  B ������������ 0 n1  �� 0 n2  �� 0 folder_flag  �� 0 tid  �� 0 a_result  C ������������
�� 
ascr
�� 
txdl�� 0 
_delimiter  �� 0 	_contents  
�� 
cobj
�� 
utxt� ;��,E�O)�,kv��,FO)�,[�\[Z�\Z�2�&E�O� �)�,%E�Y hO���,FO�� �������EF���� 0 make_path_elements  �� ��G�� G  ���� 
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
build_path  �� ;*�k+  E[�k/)�,FZ[�l/)�,FZO�)�,FO)�,�,� *j+ *�,FY hO)� ��0����WX��
�� .aevtoappnull  �   � ****��  ��  W ������ 0 msg  �� 	0 errno  X ��������Y����
�� .earsffdralis        afdr
�� 
rcIP
�� .HBsushHBTEXT    ��� file�� 0 msg  Y ������
�� 
errn�� 	0 errno  ��  
�� 
ret 
�� .sysodisAaleR        TEXT��   )j  �el W X  ��%�%j � ��N����Z[���� 	0 debug  ��  ��  Z ���� 
0 a_path  [ l����������
�� 
psxf�� 0 	make_with  �� 0 volume_name  
�� 
alis�� 0 	item_name  �� '��&E�O*�k+ j+ O)��/E�O*�k+ j+ OP ascr  ��ޭ