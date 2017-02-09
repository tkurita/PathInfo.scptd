FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007-2017 Tetsuro KURITA

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	    C o p y r i g h t   ( C )   2 0 0 7 - 2 0 1 7   T e t s u r o   K U R I T A 
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
pnam  m        �    P a t h I n f o      l     ��������  ��  ��        l      ��  ��   	G	A!@references
Home page || http://www.script-factory.net/XModules/PathInfo/en/index.html
ChangeLog || http://www.script-factory.net/XModules/PathInfo/changelog.html
Repository || https://github.com/tkurita/PathInfo.scptd

@title PathInfo Reference
* Version : 1.2.3
* Author : Tetsuro KURITA ((<scriptfactory@mac.com>))
* Requirements : Mac OS X 10.6 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

PathInfo is an AppleScript library which provides object oriented interface to deal with file references.

In AppleScript various kind of file references are used i.e. alias, File URL, HFS path and POSIX path. PathInfo allow to unified way to convert each others and to obtain various infomation from file references.

== Examples
@example
use PathInfo : script "PathInfo"

set a_path to "/System/Library/CoreServices/Finder.app/"

(*** Class methods ***)
log PathInfo's name_of(a_path)
(*Finder.app*)
log PathInfo's basename_of(a_path)
(*Finder*)
log PathInfo's path_extension_of(a_path)
(*app*)
log PathInfo's split_name("basename.txt")
(*basename, txt*)
log PathInfo's folder_of(a_path)
(*/System/Library/CoreServices/*)

(*** Obtain path infomation ***)
set a_pathinfo to PathInfo's make_with(a_path)
log a_pathinfo's item_name()
(*Finder.app*)
log a_pathinfo's basename()
(*Finder*)
log a_pathinfo's path_extension()
(*app*)
log a_pathinfo's is_folder()
(*true*)
log a_pathinfo's item_exists()
(*true*)
log a_pathinfo's is_posix()
(*true*)

(*** Converting reference form ***)
log a_pathinfo's as_alias()
(*alias Macintosh HD:System:Library:CoreServices:Finder.app:*)
log a_pathinfo's as_furl()
(*file Macintosh HD:System:Library:CoreServices:Finder.app:*)
log a_pathinfo's posix_path()
(*/System/Library/CoreServices/Finder.app/*)
log a_pathinfo's hfs_path()
(*Macintosh HD:System:Library:CoreServices:Finder.app:*)

(*** Making a new instance from the instance ***)
log a_pathinfo's parent_folder()'s posix_path()
(*/System/Library/CoreServices/*)
log a_pathinfo's change_name("new_item")'s posix_path()
(*/System/Library/CoreServices/new_item/*)
log a_pathinfo's change_path_extension("txt")'s posix_path()
(*/System/Library/CoreServices/Finder.txt/*)
log a_pathinfo's change_folder("/aaa/bbb/")'s posix_path()
(*/aaa/bbb/Finder.app/*)
log a_pathinfo's child("child_item")'s posix_path()
(*/System/Library/CoreServices/Finder.app/child_item*)
     �  � ! @ r e f e r e n c e s 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / P a t h I n f o / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / P a t h I n f o / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / P a t h I n f o . s c p t d 
 
 @ t i t l e   P a t h I n f o   R e f e r e n c e 
 *   V e r s i o n   :   1 . 2 . 3 
 *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e q u i r e m e n t s   :   M a c   O S   X   1 0 . 6   o r   l a t e r 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
 
 P a t h I n f o   i s   a n   A p p l e S c r i p t   l i b r a r y   w h i c h   p r o v i d e s   o b j e c t   o r i e n t e d   i n t e r f a c e   t o   d e a l   w i t h   f i l e   r e f e r e n c e s . 
 
 I n   A p p l e S c r i p t   v a r i o u s   k i n d   o f   f i l e   r e f e r e n c e s   a r e   u s e d   i . e .   a l i a s ,   F i l e   U R L ,   H F S   p a t h   a n d   P O S I X   p a t h .   P a t h I n f o   a l l o w   t o   u n i f i e d   w a y   t o   c o n v e r t   e a c h   o t h e r s   a n d   t o   o b t a i n   v a r i o u s   i n f o m a t i o n   f r o m   f i l e   r e f e r e n c e s . 
 
 = =   E x a m p l e s 
 @ e x a m p l e 
 u s e   P a t h I n f o   :   s c r i p t   " P a t h I n f o " 
 
 s e t   a _ p a t h   t o   " / S y s t e m / L i b r a r y / C o r e S e r v i c e s / F i n d e r . a p p / " 
 
 ( * * *   C l a s s   m e t h o d s   * * * ) 
 l o g   P a t h I n f o ' s   n a m e _ o f ( a _ p a t h ) 
 ( * F i n d e r . a p p * ) 
 l o g   P a t h I n f o ' s   b a s e n a m e _ o f ( a _ p a t h ) 
 ( * F i n d e r * ) 
 l o g   P a t h I n f o ' s   p a t h _ e x t e n s i o n _ o f ( a _ p a t h ) 
 ( * a p p * ) 
 l o g   P a t h I n f o ' s   s p l i t _ n a m e ( " b a s e n a m e . t x t " ) 
 ( * b a s e n a m e ,   t x t * ) 
 l o g   P a t h I n f o ' s   f o l d e r _ o f ( a _ p a t h ) 
 ( * / S y s t e m / L i b r a r y / C o r e S e r v i c e s / * ) 
 
 ( * * *   O b t a i n   p a t h   i n f o m a t i o n   * * * ) 
 s e t   a _ p a t h i n f o   t o   P a t h I n f o ' s   m a k e _ w i t h ( a _ p a t h ) 
 l o g   a _ p a t h i n f o ' s   i t e m _ n a m e ( ) 
 ( * F i n d e r . a p p * ) 
 l o g   a _ p a t h i n f o ' s   b a s e n a m e ( ) 
 ( * F i n d e r * ) 
 l o g   a _ p a t h i n f o ' s   p a t h _ e x t e n s i o n ( ) 
 ( * a p p * ) 
 l o g   a _ p a t h i n f o ' s   i s _ f o l d e r ( ) 
 ( * t r u e * ) 
 l o g   a _ p a t h i n f o ' s   i t e m _ e x i s t s ( ) 
 ( * t r u e * ) 
 l o g   a _ p a t h i n f o ' s   i s _ p o s i x ( ) 
 ( * t r u e * ) 
 
 ( * * *   C o n v e r t i n g   r e f e r e n c e   f o r m   * * * ) 
 l o g   a _ p a t h i n f o ' s   a s _ a l i a s ( ) 
 ( * a l i a s   M a c i n t o s h   H D : S y s t e m : L i b r a r y : C o r e S e r v i c e s : F i n d e r . a p p : * ) 
 l o g   a _ p a t h i n f o ' s   a s _ f u r l ( ) 
 ( * f i l e   M a c i n t o s h   H D : S y s t e m : L i b r a r y : C o r e S e r v i c e s : F i n d e r . a p p : * ) 
 l o g   a _ p a t h i n f o ' s   p o s i x _ p a t h ( ) 
 ( * / S y s t e m / L i b r a r y / C o r e S e r v i c e s / F i n d e r . a p p / * ) 
 l o g   a _ p a t h i n f o ' s   h f s _ p a t h ( ) 
 ( * M a c i n t o s h   H D : S y s t e m : L i b r a r y : C o r e S e r v i c e s : F i n d e r . a p p : * ) 
 
 ( * * *   M a k i n g   a   n e w   i n s t a n c e   f r o m   t h e   i n s t a n c e   * * * ) 
 l o g   a _ p a t h i n f o ' s   p a r e n t _ f o l d e r ( ) ' s   p o s i x _ p a t h ( ) 
 ( * / S y s t e m / L i b r a r y / C o r e S e r v i c e s / * ) 
 l o g   a _ p a t h i n f o ' s   c h a n g e _ n a m e ( " n e w _ i t e m " ) ' s   p o s i x _ p a t h ( ) 
 ( * / S y s t e m / L i b r a r y / C o r e S e r v i c e s / n e w _ i t e m / * ) 
 l o g   a _ p a t h i n f o ' s   c h a n g e _ p a t h _ e x t e n s i o n ( " t x t " ) ' s   p o s i x _ p a t h ( ) 
 ( * / S y s t e m / L i b r a r y / C o r e S e r v i c e s / F i n d e r . t x t / * ) 
 l o g   a _ p a t h i n f o ' s   c h a n g e _ f o l d e r ( " / a a a / b b b / " ) ' s   p o s i x _ p a t h ( ) 
 ( * / a a a / b b b / F i n d e r . a p p / * ) 
 l o g   a _ p a t h i n f o ' s   c h i l d ( " c h i l d _ i t e m " ) ' s   p o s i x _ p a t h ( ) 
 ( * / S y s t e m / L i b r a r y / C o r e S e r v i c e s / F i n d e r . a p p / c h i l d _ i t e m * ) 
      l     ��������  ��  ��        l      ��  ��    D >!@group Class methods
Obtain information from a path quickly.
     �   | ! @ g r o u p   C l a s s   m e t h o d s 
 O b t a i n   i n f o r m a t i o n   f r o m   a   p a t h   q u i c k l y . 
       l     ��������  ��  ��      ! " ! l      �� # $��   #60!@abstruct
Obtain a name from a reference to a file/folder.
@param an_item (a reference to file/folder) : 
Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.
@result
text : a name of the passed item
    $ � % %` ! @ a b s t r u c t 
 O b t a i n   a   n a m e   f r o m   a   r e f e r e n c e   t o   a   f i l e / f o l d e r . 
 @ p a r a m   a n _ i t e m   ( a   r e f e r e n c e   t o   f i l e / f o l d e r )   :   
 A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l . 
 @ r e s u l t 
 t e x t   :   a   n a m e   o f   t h e   p a s s e d   i t e m 
 "  & ' & i     ( ) ( I      �� *���� 0 name_of   *  +�� + o      ���� 0 an_item  ��  ��   ) L      , , n    
 - . - I    
�������� 0 	item_name  ��  ��   . I     �� /���� 0 	make_with   /  0�� 0 o    ���� 0 an_item  ��  ��   '  1 2 1 l     ��������  ��  ��   2  3 4 3 l      �� 5 6��   5!@abstruct
Obtain a name of the item with removing a path extension.
Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.
@result
Unicode text : basename of the passed item
    6 � 7 7( ! @ a b s t r u c t 
 O b t a i n   a   n a m e   o f   t h e   i t e m   w i t h   r e m o v i n g   a   p a t h   e x t e n s i o n . 
 A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l . 
 @ r e s u l t 
 U n i c o d e   t e x t   :   b a s e n a m e   o f   t h e   p a s s e d   i t e m 
 4  8 9 8 i    
 : ; : I      �� <���� 0 basename_of   <  =�� = o      ���� 0 an_item  ��  ��   ; L      > > n    
 ? @ ? I    
�������� 0 basename  ��  ��   @ I     �� A���� 0 	make_with   A  B�� B o    ���� 0 an_item  ��  ��   9  C D C l     ��������  ��  ��   D  E F E l      �� G H��   G��!@abstruct
Obtain a path extension of the item. The result does not starts with ".".
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.
@param an_item (a reference to file/folder) : 
Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.
@result
text : A path extension
    H � I I~ ! @ a b s t r u c t 
 O b t a i n   a   p a t h   e x t e n s i o n   o f   t h e   i t e m .   T h e   r e s u l t   d o e s   n o t   s t a r t s   w i t h   " . " . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n . 
 @ p a r a m   a n _ i t e m   ( a   r e f e r e n c e   t o   f i l e / f o l d e r )   :   
 A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l . 
 @ r e s u l t 
 t e x t   :   A   p a t h   e x t e n s i o n 
 F  J K J i     L M L I      �� N���� 0 path_extension_of   N  O�� O o      ���� 0 an_item  ��  ��   M L      P P n     Q R Q I    �������� 0 path_extension  ��  ��   R I     �� S���� 0 	make_with   S  T U T o    ���� 0 an_item   U  V�� V m    ��
�� boovtrue��  ��   K  W X W l     ��������  ��  ��   X  Y Z Y i     [ \ [ I      �� ]���� 0 	suffix_of   ]  ^�� ^ o      ���� 0 an_item  ��  ��   \ L      _ _ I     �� `���� 0 path_extension_of   `  a�� a o    ���� 0 an_item  ��  ��   Z  b c b l     ��������  ��  ��   c  d e d l      �� f g��   f � �!@abstruct
Split a file name into a base name and a path extension.
@param a_name (text) : A file name
@result list of text: {basename, path_extension}
    g � h h0 ! @ a b s t r u c t 
 S p l i t   a   f i l e   n a m e   i n t o   a   b a s e   n a m e   a n d   a   p a t h   e x t e n s i o n . 
 @ p a r a m   a _ n a m e   ( t e x t )   :   A   f i l e   n a m e 
 @ r e s u l t   l i s t   o f   t e x t :   { b a s e n a m e ,   p a t h _ e x t e n s i o n } 
 e  i j i i     k l k I      �� m���� 0 
split_name   m  n�� n o      ���� 
0 a_name  ��  ��   l k     F o o  p q p Z     @ r s�� t r E      u v u o     ���� 
0 a_name   v m     w w � x x  . s k    6 y y  z { z r     | } | n   	 ~  ~ 1    	��
�� 
txdl  1    ��
�� 
ascr } o      ���� 0 tid   {  � � � r     � � � J     � �  ��� � m     � � � � �  .��   � n      � � � 1    ��
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
ascr��  ��   t k   9 @ � �  � � � r   9 < � � � o   9 :���� 
0 a_name   � o      ���� 0 
a_basename   �  ��� � r   = @ � � � m   = >��
�� 
msng � o      ���� 0 a_suffix  ��   q  ��� � L   A F � � J   A E � �  � � � o   A B���� 0 
a_basename   �  ��� � o   B C���� 0 a_suffix  ��  ��   j  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �!@abstruct
Obtain a folder path
@param an_item (a reference to file/folder) : 
Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.
@result
Unicode text : A path to the folder.
    � � � �0 ! @ a b s t r u c t 
 O b t a i n   a   f o l d e r   p a t h 
 @ p a r a m   a n _ i t e m   ( a   r e f e r e n c e   t o   f i l e / f o l d e r )   :   
 A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l . 
 @ r e s u l t 
 U n i c o d e   t e x t   :   A   p a t h   t o   t h e   f o l d e r . 
 �  � � � i     � � � I      �� ����� 0 	folder_of   �  ��� � o      ���� 0 an_item  ��  ��   � L      � � n    
 � � � I    
�������� 0 
folder_ref  ��  ��   � I     �� ����� 0 	make_with   �  �� � o    �~�~ 0 an_item  �  ��   �  � � � l     �}�|�{�}  �|  �{   �  � � � l      �z � ��z   � " !@group Constructor Methods     � � � � 8 ! @ g r o u p   C o n s t r u c t o r   M e t h o d s   �  � � � l     �y�x�w�y  �x  �w   �  � � � h    "�v ��v *0 posixpathtranslator POSIXPathTranslator � k       � �  � � � j     �u ��u 0 
_delimiter   � m      � � � � �  / �  � � � l     �t�s�r�t  �s  �r   �  � � � i     � � � I      �q ��p�q 0 to_text   �  ��o � o      �n�n 
0 a_file  �o  �p   � L      � � n     � � � 1    �m
�m 
psxp � o     �l�l 
0 a_file   �  � � � l     �k�j�i�k  �j  �i   �  � � � i    
 � � � I      �h ��g�h 0 to_alias   �  ��f � o      �e�e 
0 a_file  �f  �g   � L      � � c      � � � l     ��d�c � c      � � � o     �b�b 
0 a_file   � m    �a
�a 
psxf�d  �c   � m    �`
�` 
alis �  � � � l     �_�^�]�_  �^  �]   �  � � � i     � � � I      �\ ��[�\ 0 resolve_disk   �  ��Z � o      �Y�Y 0 path_elements  �Z  �[   � k     8 � �  � � � r      � � � n     �  � 1    �X
�X 
leng  o     �W�W 0 path_elements   � o      �V�V 0 n_elems   �  Z    5�U F     l   	�T�S ?    		
	 o    �R�R 0 n_elems  
 m    �Q�Q �T  �S   l   �P�O =    n    I    �N�M�N 0 item_at   �L m    �K�K �L  �M   o    �J�J 0 path_elements   m     �  V o l u m e s�P  �O   Z    /�I l   �H�G ?     o    �F�F 0 n_elems   m    �E�E �H  �G   r    ) n   ' I     '�D�C�D 0 compose     m     !�B�B   !"! m   ! "�A�A " #�@# m   " #�?
�? boovtrue�@  �C   o     �>�> 0 path_elements   o      �=�= 
0 a_disk  �I   r   , /$%$ m   , -&& �''  /% o      �<�< 
0 a_disk  �U   r   2 5()( m   2 3** �++  /) o      �;�; 
0 a_disk   ,�:, L   6 8-- o   6 7�9�9 
0 a_disk  �:   � ./. l     �8�7�6�8  �7  �6  / 010 i    232 I      �5�4�3�5 0 hfs_path  �4  �3  3 L     
44 c     	565 l    7�2�17 c     898 l    :�0�/: n     ;<; 1    �.
�. 
psxp< n    =>= o    �-�- 0 	_item_ref  >  f     �0  �/  9 m    �,
�, 
psxf�2  �1  6 m    �+
�+ 
utxt1 ?@? l     �*�)�(�*  �)  �(  @ A�'A i    BCB I      �&�%�$�& 0 as_text  �%  �$  C L     DD n    EFE n   GHG 1    �#
�# 
psxpH o    �"�" 0 	_item_ref  F  f     �'   � IJI l     �!� ��!  �   �  J KLK h   # *�M� &0 hfspathtranslator HFSPathTranslatorM k      NN OPO j     �Q� 0 
_delimiter  Q m     RR �SS  :P TUT l     ����  �  �  U VWV i    XYX I      �Z�� 0 to_text  Z [�[ o      �� 
0 a_file  �  �  Y L     \\ c     ]^] o     �� 
0 a_file  ^ m    �
� 
utxtW _`_ l     ����  �  �  ` aba i    
cdc I      �e�� 0 to_alias  e f�f o      �� 
0 a_file  �  �  d L     gg c     hih o     �� 
0 a_file  i m    �
� 
alisb jkj l     �
�	��
  �	  �  k lml i    non I      �p�� 0 resolve_disk  p q�q o      �� 0 path_elements  �  �  o L     rr l    s��s b     tut n    vwv I    �x� � 0 item_at  x y��y m    ���� ��  �   w o     ���� 0 path_elements  u o    ���� 0 
_delimiter  �  �  m z{z l     ��������  ��  ��  { |}| i    ~~ I      �������� 0 hfs_path  ��  ��   L     �� c     ��� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
utxt} ��� l     ��������  ��  ��  � ���� i    ��� I      �������� 0 as_text  ��  ��  � L     �� c     ��� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
utxt��  L ��� l     ��������  ��  ��  � ��� l      ������  �!@abstruct
Make a PathInfo instance for a file reference.
@description
If a parameter is text and  does not starts with "/", a parameter is HFS path. And HFS path is used for internal processings. Otherwise, a POSIX path is userd for internal processings.

If a path ending with a path delimiter (&quot;/&quot; or &quot;&quot;) is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.
@param a_path (alias, furl, POSIX path or HFS path) 
@result script object : A new instance of PathInfo
   � ���( ! @ a b s t r u c t 
 M a k e   a   P a t h I n f o   i n s t a n c e   f o r   a   f i l e   r e f e r e n c e . 
 @ d e s c r i p t i o n 
 I f   a   p a r a m e t e r   i s   t e x t   a n d     d o e s   n o t   s t a r t s   w i t h   " / " ,   a   p a r a m e t e r   i s   H F S   p a t h .   A n d   H F S   p a t h   i s   u s e d   f o r   i n t e r n a l   p r o c e s s i n g s .   O t h e r w i s e ,   a   P O S I X   p a t h   i s   u s e r d   f o r   i n t e r n a l   p r o c e s s i n g s . 
 
 I f   a   p a t h   e n d i n g   w i t h   a   p a t h   d e l i m i t e r   ( & q u o t ; / & q u o t ;   o r   & q u o t ; & q u o t ; )   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   i t e m   i s   c o n s i d e r e d   a s   a   f o l d e r   i . e .   ( ( < i s _ f o l d e r > ) )   w i l l   r e t u r n   t r u e . 
 @ p a r a m   a _ p a t h   ( a l i a s ,   f u r l ,   P O S I X   p a t h   o r   H F S   p a t h )   
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o 
� ��� i   + .��� I      ������� 0 	make_with  � ���� o      ���� 
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
If a HFS path ending with ":" is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.
@param a_path (alias, furl, text of POSIX path) 
@result script object : A new instance of PathInfo
   � ���Z ! @ a b s t r u c t 
 M a k e   a   P a t h I n f o   i n s t a n c e   f o r   a   f i l e   r e f e r e n c e . 
 @ d e s c r i p t i o n 
 I f   a   H F S   p a t h   e n d i n g   w i t h   " : "   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   i t e m   i s   c o n s i d e r e d   a s   a   f o l d e r   i . e .   ( ( < i s _ f o l d e r > ) )   w i l l   r e t u r n   t r u e . 
 @ p a r a m   a _ p a t h   ( a l i a s ,   f u r l ,   t e x t   o f   P O S I X   p a t h )   
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o 
� ��� i   / 2��� I      ������� 0 make_with_hfs  � ���� o      ���� 
0 a_path  ��  ��  � L     �� I     ������� 0 make_with_pathtrans  � ��� o    ���� 
0 a_path  � ���� o    ���� &0 hfspathtranslator HFSPathTranslator��  ��  � ��� l     ��������  ��  ��  � � � l      ����  RL!@abstruct
Make a PathInfo instance for a file reference. A synonym of ((<make_with>))
@description
If a POSIX path ending with "/" is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.
@param a_path (alias, furl, text of POSIX path) 
@result script object : A new instance of PathInfo
    �� ! @ a b s t r u c t 
 M a k e   a   P a t h I n f o   i n s t a n c e   f o r   a   f i l e   r e f e r e n c e .   A   s y n o n y m   o f   ( ( < m a k e _ w i t h > ) ) 
 @ d e s c r i p t i o n 
 I f   a   P O S I X   p a t h   e n d i n g   w i t h   " / "   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   i t e m   i s   c o n s i d e r e d   a s   a   f o l d e r   i . e .   ( ( < i s _ f o l d e r > ) )   w i l l   r e t u r n   t r u e . 
 @ p a r a m   a _ p a t h   ( a l i a s ,   f u r l ,   t e x t   o f   P O S I X   p a t h )   
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o 
   i   3 6 I      ������ 0 make_with_posix   	��	 o      ���� 
0 a_path  ��  ��   L     

 I     ������ 0 make_with_pathtrans    o    ���� 
0 a_path   �� o    ���� *0 posixpathtranslator POSIXPathTranslator��  ��    l     ��������  ��  ��    i   7 : I      ������ 0 make_with_pathtrans    o      ���� 
0 a_path   �� o      ���� 0 	pathtrans  ��  ��   k    [  l     ����   &   log "start make_with_pathtrans"    � @   l o g   " s t a r t   m a k e _ w i t h _ p a t h t r a n s "   r     !"! n     #$# m    ��
�� 
pcls$ o     ���� 
0 a_path  " o      ���� 0 a_class    %&% r    	'(' m    ��
�� boovfals( o      ���� 0 is_text  & )*) Z   
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
�� boovtrue7 o      ���� 0 is_text  ��  - Z    {89:;8 =   <=< o    ���� 0 a_class  = m    ��
�� 
alis9 r     (>?> n    &@A@ I   ! &��B��� 0 to_text  B C�~C o   ! "�}�} 
0 a_path  �~  �  A o     !�|�| 0 	pathtrans  ? o      �{�{ 
0 a_path  : DED E  + 1FGF J   + /HH IJI m   + ,�z
�z 
fss J K�yK m   , -�x
�x 
furl�y  G o   / 0�w�w 0 a_class  E L�vL Q   4 UMNOM r   7 APQP n  7 ?RSR I   8 ?�uT�t�u 0 to_text  T U�sU c   8 ;VWV o   8 9�r�r 
0 a_path  W m   9 :�q
�q 
alis�s  �t  S o   7 8�p�p 0 	pathtrans  Q o      �o�o 
0 a_path  N R      �n�m�l
�n .ascrerr ****      � ****�m  �l  O k   I UXX YZY r   I Q[\[ n  I O]^] I   J O�k_�j�k 0 to_text  _ `�i` o   J K�h�h 
0 a_path  �i  �j  ^ o   I J�g�g 0 	pathtrans  \ o      �f�f 
0 a_path  Z a�ea r   R Ubcb m   R S�d
�d boovtruec o      �c�c 0 is_text  �e  �v  ; k   X {dd efe Q   X rghig r   [ `jkj c   [ ^lml o   [ \�b�b 
0 a_path  m m   \ ]�a
�a 
alisk o      �`�` 
0 a_path  h R      �_�^�]
�_ .ascrerr ****      � ****�^  �]  i R   h r�\no
�\ .ascrerr ****      � ****n b   l qpqp l  l or�[�Zr c   l osts o   l m�Y�Y 0 a_class  t m   m n�X
�X 
utxt�[  �Z  q m   o puu �vv x   i s   u n s u p p o r t e d   d a t a   t y p e .   P a t h I n f o   c a n ' t   c o n v e r t   t o   a   p a t h .o �Ww�V
�W 
errnw m   j k�U�U��V  f x�Tx r   s {yzy n  s y{|{ I   t y�S}�R�S 0 to_text  } ~�Q~ o   t u�P�P 
0 a_path  �Q  �R  | o   s t�O�O 0 	pathtrans  z o      �N�N 
0 a_path  �T  * � r   | ���� n  | ���� I   } ��M��L�M 0 	decompose  � ��K� o   } ~�J�J 
0 a_path  �K  �L  � o   | }�I�I 0 	pathtrans  � o      �H�H 0 path_elements  � ��� r   � ���� n  � ���� I   � ��G��F�G 0 resolve_disk  � ��E� o   � ��D�D 0 path_elements  �E  �F  � o   � ��C�C 0 	pathtrans  � o      �B�B 
0 a_disk  � ��� Z   � ����A�@� H   � ��� o   � ��?�? 0 is_text  � r   � ���� n  � ���� I   � ��>��=�> 0 to_alias  � ��<� o   � ��;�; 
0 a_disk  �<  �=  � o   � ��:�: 0 	pathtrans  � o      �9�9 
0 a_disk  �A  �@  � ��� r   � ���� n  � ���� I   � ��8��7�8 0 item_at  � ��6� m   � ��5�5���6  �7  � o   � ��4�4 0 path_elements  � o      �3�3 
0 a_name  � ��� Z   �0���2�� =  � ���� o   � ��1�1 
0 a_name  � m   � ��� ���  � k   � ��� ��� r   � ���� m   � ��0
�0 boovtrue� o      �/�/ 0 folder_flag  � ��� r   � ���� n  � ���� I   � ��.��-�. 0 item_at  � ��,� m   � ��+�+���,  �-  � o   � ��*�* 0 path_elements  � o      �)�) 
0 a_name  � ��(� Z   � ����'�� =  � ���� n  � ���� 1   � ��&
�& 
leng� o   � ��%�% 0 path_elements  � m   � ��$�$ � l  � ����� O   � ���� r   � ���� 1   � ��#
�# 
desk� o      �"�" 0 a_folder  � m   � ����                                                                                  MACS  alis    t  Macintosh HD               ҽS]H+     '
Finder.app                                                      ���qX�        ����  	                CoreServices    Ҽ��      �p�J       '   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �   if a_path is disk   � ��� $   i f   a _ p a t h   i s   d i s k�'  � l  � ����� k   � ��� ��� r   � ���� n  � ���� I   � ��!�� �! 0 compose  � ��� m   � ��� � ��� m   � ������ ��� m   � ��
� boovtrue�  �   � o   � ��� 0 path_elements  � o      �� 0 a_folder  � ��� Z   � ������ H   � ��� o   � ��� 0 is_text  � r   � ���� n  � ���� I   � ����� 0 to_alias  � ��� o   � ��� 0 a_folder  �  �  � o   � ��� 0 	pathtrans  � o      �� 0 a_folder  �  �  �  �   if a_path is folder   � ��� (   i f   a _ p a t h   i s   f o l d e r�(  �2  � k   �0�� ��� r   � ���� m   � ��
� boovfals� o      �� 0 folder_flag  � ��� Z   0����� ?   ��� n  ��� 1  �
� 
leng� o   �
�
 0 path_elements  � m  �	�	 � k  
(�� ��� r  
��� n 
��� I  ���� 0 compose  � ��� m  �� � ��� m  ����� ��� m  �
� boovtrue�  �  � o  
�� 0 path_elements  � o      �� 0 a_folder  � �� � Z  (� ����� H   o  ���� 0 is_text    r  $ n " I  "������ 0 to_alias   �� o  ���� 0 a_folder  ��  ��   o  ���� 0 	pathtrans   o      ���� 0 a_folder  ��  ��  �   �  � r  +0	 m  +.��
�� 
msng	 o      ���� 0 a_folder  �  � 

 r  1J I      ������ 0 
split_name   �� o  23���� 
0 a_name  ��  ��   J        o      ���� 0 
a_basename   �� o      ���� 0 a_suffix  ��   �� L  K[ I  KZ������ 0 make_with_vars    o  LM���� 0 	pathtrans    o  MN���� 
0 a_disk    o  NO���� 0 a_folder    o  OP���� 
0 a_name     o  PQ���� 0 
a_basename    !"! o  QR���� 0 a_suffix  " #$# o  RS���� 0 folder_flag  $ %��% o  ST���� 
0 a_path  ��  ��  ��   &'& l     ��������  ��  ��  ' ()( i   ; >*+* I      ��,���� 0 make_with_opts  , -.- o      ���� 
0 a_path  . /��/ K      00 ��1���� 0 prefering_posix  1 o      ���� 
0 a_bool  ��  ��  ��  + k     22 343 Z     56��75 o     ���� 
0 a_bool  6 r    898 o    	���� *0 posixpathtranslator POSIXPathTranslator9 o      ���� 0 	pathtrans  ��  7 r    :;: o    ���� &0 hfspathtranslator HFSPathTranslator; o      ���� 0 	pathtrans  4 <��< L    == I    ��>���� 0 make_with_pathtrans  > ?@? o    ���� 
0 a_path  @ A��A o    ���� 0 	pathtrans  ��  ��  ��  ) BCB l     ��������  ��  ��  C DED i   ? BFGF I      ��H���� 0 make_with_vars  H IJI o      ���� 0 	pathtrans  J KLK o      ���� 
0 a_disk  L MNM o      ���� 0 a_folder  N OPO o      ���� 
0 a_name  P QRQ o      ���� 0 
a_basename  R STS o      ���� 0 a_suffix  T UVU o      ���� 0 folder_flag  V W��W o      ���� 
0 a_path  ��  ��  G k     
XX YZY h     ��[�� 0 pathinfo PathInfo[ k      \\ ]^] j     ��_
�� 
pare_ o     ���� 0 	pathtrans  ^ `a` j   	 ��b�� 	0 _disk  b o   	 ���� 
0 a_disk  a cdc j    ��e�� 0 _folder  e o    ���� 0 a_folder  d fgf j    ��h�� 	0 _name  h o    ���� 
0 a_name  g iji j    $��k�� 0 	_basename  k o    #���� 0 
a_basename  j lml j   % +��n�� 0 _path_extension  n o   % *���� 0 a_suffix  m opo j   , 2��q�� 0 
_is_folder  q o   , 1���� 0 folder_flag  p r��r j   3 9��s�� 0 	_item_ref  s o   3 8���� 
0 a_path  ��  Z t��t L    
uu o    	���� 0 pathinfo PathInfo��  E vwv l     ��������  ��  ��  w xyx l      ��z{��  z &  !@group Obtain path information    { �|| @ ! @ g r o u p   O b t a i n   p a t h   i n f o r m a t i o n  y }~} l     ��������  ��  ��  ~ � l      ������  � H B!@abstruct 
Obtain a name of the file or the folder.
@result text
   � ��� � ! @ a b s t r u c t   
 O b t a i n   a   n a m e   o f   t h e   f i l e   o r   t h e   f o l d e r . 
 @ r e s u l t   t e x t 
� ��� i   C F��� I      �������� 0 	item_name  ��  ��  � L     �� n    ��� o    ���� 	0 _name  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � E ?!@abstruct 
Obtain a name without path extension.
@result text
   � ��� ~ ! @ a b s t r u c t   
 O b t a i n   a   n a m e   w i t h o u t   p a t h   e x t e n s i o n . 
 @ r e s u l t   t e x t 
� ��� i   G J��� I      �������� 0 basename  ��  ��  � L     �� n    ��� o    ���� 0 	_basename  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct 
Obtain a path extension of the file name. The result does not starts with ".".
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.
@result text
   � ���� ! @ a b s t r u c t   
 O b t a i n   a   p a t h   e x t e n s i o n   o f   t h e   f i l e   n a m e .   T h e   r e s u l t   d o e s   n o t   s t a r t s   w i t h   " . " . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n . 
 @ r e s u l t   t e x t 
� ��� i   K N��� I      �������� 0 path_extension  ��  ��  � L     �� n    ��� o    ���� 0 _path_extension  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � ^ X!@abstruct 
Obtain the volume name of the item referenced by the instance.
@result text
   � ��� � ! @ a b s t r u c t   
 O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ r e s u l t   t e x t 
� ��� i   O R��� I      �������� 0 volume_name  ��  ��  � k     M�� ��� Z     ������� >    ��� n    ��� o    ���� 	0 _disk  �  f     � m    �� ���  /� r    ��� n   ��� I    �������� 0 	item_name  ��  ��  � I    ������ 0 	make_with  � ��~� n  	 ��� o   
 �}�} 	0 _disk  �  f   	 
�~  �  � o      �|�| 0 a_result  ��  ��  � ��� l   �{���{  � : 4 if my _disk is an alias, item_name() will return ""   � ��� h   i f   m y   _ d i s k   i s   a n   a l i a s ,   i t e m _ n a m e ( )   w i l l   r e t u r n   " "� ��� Z    '���z�y� >   ��� o    �x�x 0 a_result  � m    �� ���  � L   ! #�� o   ! "�w�w 0 a_result  �z  �y  � ��� l  ( (�v�u�t�v  �u  �t  � ��� r   ( /��� I   ( -�s�r�q�s 0 hfs_path  �r  �q  � o      �p�p 
0 a_path  � ��� r   0 5��� n  0 3��� 1   1 3�o
�o 
txdl� 1   0 1�n
�n 
ascr� o      �m�m 0 tid  � ��� r   6 =��� J   6 9�� ��l� m   6 7�� ���  :�l  � n     ��� 1   : <�k
�k 
txdl� 1   9 :�j
�j 
ascr� ��� r   > D��� n   > B��� 4   ? B�i�
�i 
citm� m   @ A�h�h � o   > ?�g�g 
0 a_path  � o      �f�f 0 a_result  � ��� r   E J��� o   E F�e�e 0 tid  � n     ��� 1   G I�d
�d 
txdl� 1   F G�c
�c 
ascr� ��b� L   K M�� o   K L�a�a 0 a_result  �b  � ��� l     �`�_�^�`  �_  �^  � ��� l      �]���]  � j d!@abstruct 
Obtain a file reference to the folder containing the target.
@result an alias or a path
   � ��� � ! @ a b s t r u c t   
 O b t a i n   a   f i l e   r e f e r e n c e   t o   t h e   f o l d e r   c o n t a i n i n g   t h e   t a r g e t . 
 @ r e s u l t   a n   a l i a s   o r   a   p a t h 
� � � i   S V I      �\�[�Z�\ 0 
folder_ref  �[  �Z   L      n     o    �Y�Y 0 _folder    f        l     �X�W�V�X  �W  �V   	 l      �U
�U  
 � �!@abstruct 
Whether the target is a folder or not.
@description
If given path ends with a path delimiter, true will be returned wtihout checking file system. Therefor a wrong result may be returned.
@result boolean
    �� ! @ a b s t r u c t   
 W h e t h e r   t h e   t a r g e t   i s   a   f o l d e r   o r   n o t . 
 @ d e s c r i p t i o n 
 I f   g i v e n   p a t h   e n d s   w i t h   a   p a t h   d e l i m i t e r ,   t r u e   w i l l   b e   r e t u r n e d   w t i h o u t   c h e c k i n g   f i l e   s y s t e m .   T h e r e f o r   a   w r o n g   r e s u l t   m a y   b e   r e t u r n e d . 
 @ r e s u l t   b o o l e a n 
	  i   W Z I      �T�S�R�T 0 	is_folder  �S  �R   L      n     o    �Q�Q 0 
_is_folder    f       l     �P�O�N�P  �O  �N    l      �M�M   m g!@abstruct 
Obtain an internal file reference which the target contains.
@result alias or text of path
    � � ! @ a b s t r u c t   
 O b t a i n   a n   i n t e r n a l   f i l e   r e f e r e n c e   w h i c h   t h e   t a r g e t   c o n t a i n s . 
 @ r e s u l t   a l i a s   o r   t e x t   o f   p a t h 
  i   [ ^ I      �L�K�J�L 0 item_ref  �K  �J   L      n     !  o    �I�I 0 	_item_ref  !  f      "#" l     �H�G�F�H  �G  �F  # $%$ l      �E&'�E  & � �!@abstruct 
Whether an item exits in the file sysem or not.
@description
If the target exsits, the internal file reference is converted to an alias.
@result boolean
   ' �((J ! @ a b s t r u c t   
 W h e t h e r   a n   i t e m   e x i t s   i n   t h e   f i l e   s y s e m   o r   n o t . 
 @ d e s c r i p t i o n 
 I f   t h e   t a r g e t   e x s i t s ,   t h e   i n t e r n a l   f i l e   r e f e r e n c e   i s   c o n v e r t e d   t o   a n   a l i a s . 
 @ r e s u l t   b o o l e a n 
% )*) i   _ b+,+ I      �D�C�B�D 0 item_exists  �C  �B  , k     5-- ./. Q     201�A0 k    )22 343 r    565 I    �@7�?�@ 0 to_alias  7 8�>8 I    �=9�<�= 0 to_text  9 :�;: n   ;<; o    �:�: 0 	_item_ref  <  f    �;  �<  �>  �?  6 n     =>= o    �9�9 0 	_item_ref  >  f    4 ?@? r    &ABA I    "�8C�7�8 0 to_alias  C D�6D I    �5E�4�5 0 to_text  E F�3F n   GHG o    �2�2 0 _folder  H  f    �3  �4  �6  �7  B n     IJI o   # %�1�1 0 _folder  J  f   " #@ K�0K L   ' )LL m   ' (�/
�/ boovtrue�0  1 R      �.�-�,
�. .ascrerr ****      � ****�-  �,  �A  / M�+M L   3 5NN m   3 4�*
�* boovfals�+  * OPO l     �)�(�'�)  �(  �'  P QRQ l      �&ST�&  S � �!@abstruct 
Whether an item exits in the file sysem or not.
@description
The internal file reference will not be changed unlike ((<item_exists>)). 
@result boolean
   T �UUH ! @ a b s t r u c t   
 W h e t h e r   a n   i t e m   e x i t s   i n   t h e   f i l e   s y s e m   o r   n o t . 
 @ d e s c r i p t i o n 
 T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .   
 @ r e s u l t   b o o l e a n 
R VWV i   c fXYX I      �%�$�#�% 0 item_exists_without_update  �$  �#  Y k     ZZ [\[ Q     ]^�"] k    __ `a` I    �!b� �! 0 to_alias  b c�c I    �d�� 0 to_text  d e�e n   fgf o    �� 0 	_item_ref  g  f    �  �  �  �   a h�h L    ii m    �
� boovtrue�  ^ R      ���
� .ascrerr ****      � ****�  �  �"  \ j�j L    kk m    �
� boovfals�  W lml l     ����  �  �  m non l      �pq�  p n h!@abstruct 
If ((<child>)) and ((<change_folder>)) prefer posix path, true is returned.
@result boolean
   q �rr � ! @ a b s t r u c t   
 I f   ( ( < c h i l d > ) )   a n d   ( ( < c h a n g e _ f o l d e r > ) )   p r e f e r   p o s i x   p a t h ,   t r u e   i s   r e t u r n e d . 
 @ r e s u l t   b o o l e a n 
o sts i   g juvu I      ���� 0 is_posix  �  �  v L     ww =    xyx n    z{z o    �� 0 
_delimiter  {  f     y m    || �}}  /t ~~ l     ��
�	�  �
  �	   ��� l      ����  � ( "!@group Converting reference form    � ��� D ! @ g r o u p   C o n v e r t i n g   r e f e r e n c e   f o r m  � ��� l     ����  �  �  � ��� l      ����  � � ~!@abstruct Obtain a file reference as alias.
@description
If failed to coerce to an alias, an error will raise.
@result alias
   � ��� � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   a l i a s . 
 @ d e s c r i p t i o n 
 I f   f a i l e d   t o   c o e r c e   t o   a n   a l i a s ,   a n   e r r o r   w i l l   r a i s e . 
 @ r e s u l t   a l i a s 
� ��� i   k n��� I      ���� 0 as_alias  �  �  � k     7�� ��� Z     1��� ��� >    ��� n     ��� m    ��
�� 
pcls� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
alis� k   
 -�� ��� r   
 ��� I   
 ������� 0 to_alias  � ���� I    ������� 0 to_text  � ���� n   ��� o    ���� 0 	_item_ref  �  f    ��  ��  ��  ��  � n     ��� o    ���� 0 	_item_ref  �  f    � ���� r    -��� I    )������� 0 to_alias  � ���� I    %������� 0 to_text  � ���� n   !��� o    !���� 0 _folder  �  f    ��  ��  ��  ��  � n     ��� o   * ,���� 0 _folder  �  f   ) *��  �   ��  � ���� L   2 7�� n  2 6��� o   3 5���� 0 	_item_ref  �  f   2 3��  � ��� l     ��������  ��  ��  � ��� l      ������  � G A!@abstruct Obtain a file reference as File URL.
@result File URL
   � ��� � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   F i l e   U R L . 
 @ r e s u l t   F i l e   U R L 
� ��� i   o r��� I      �������� 0 as_furl  ��  ��  � L     �� c     ��� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
furl� ��� l     ��������  ��  ��  � ��� l      ������  � J D!@abstruct Obtain a file reference as POSIX path form.
@result text
   � ��� � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   P O S I X   p a t h   f o r m . 
 @ r e s u l t   t e x t 
� ��� i   s v��� I      �������� 0 
posix_path  ��  ��  � L     �� n    ��� n   ��� 1    ��
�� 
psxp� o    ���� 0 	_item_ref  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � M G!@abstruct Obtain POSIX path which does not end with "/".
@result text
   � ��� � ! @ a b s t r u c t   O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " . 
 @ r e s u l t   t e x t 
� ��� i   w z��� I      �������� 0 normalized_posix_path  ��  ��  � k     "�� ��� r     ��� I     �������� 0 
posix_path  ��  ��  � o      ���� 
0 a_path  � ��� Z    ������� D    ��� o    	���� 
0 a_path  � m   	 
�� ���  /� r    ��� n    ��� 7   ����
�� 
ctxt� m    ���� � m    ������� o    ���� 
0 a_path  � o      ���� 
0 a_path  ��  ��  � ���� L     "�� o     !���� 
0 a_path  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � [ U!@syntax hfs_path()
@abstruct Obtain a file reference as HFS path form.
@result text
   � ��� � ! @ s y n t a x   h f s _ p a t h ( ) 
 @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   H F S   p a t h   f o r m . 
 @ r e s u l t   t e x t 
� ��� l     ��������  ��  ��  �    l      ����   � �!@syntax as_text()
@abstruct Obtain a path text.
@result text of HFS path or POSX path. The path form follows the path form passed to ((<make_with>)).
    �. ! @ s y n t a x   a s _ t e x t ( ) 
 @ a b s t r u c t   O b t a i n   a   p a t h   t e x t . 
 @ r e s u l t   t e x t   o f   H F S   p a t h   o r   P O S X   p a t h .   T h e   p a t h   f o r m   f o l l o w s   t h e   p a t h   f o r m   p a s s e d   t o   ( ( < m a k e _ w i t h > ) ) . 
  l     ��������  ��  ��    l     ��������  ��  ��   	
	 l      ����   6 0!@group Making a new instance from the instance     � ` ! @ g r o u p   M a k i n g   a   n e w   i n s t a n c e   f r o m   t h e   i n s t a n c e  
  l     ��������  ��  ��    l      ����    y!@abstruct 
Obtain an instance of PathInfo referencing the folder containing the target.
@result an instance of PathInfo
    � � ! @ a b s t r u c t   
 O b t a i n   a n   i n s t a n c e   o f   P a t h I n f o   r e f e r e n c i n g   t h e   f o l d e r   c o n t a i n i n g   t h e   t a r g e t . 
 @ r e s u l t   a n   i n s t a n c e   o f   P a t h I n f o 
  i   { ~ I      �������� 0 parent_folder  ��  ��   L      I     ������ 0 make_with_opts    I    �������� 0 
folder_ref  ��  ��   �� K     ������ 0 prefering_posix   I    �������� 0 is_posix  ��  ��  ��  ��  ��    !  l     ��������  ��  ��  ! "#" l      ��$%��  $ � �!@abstruct
Make a new PathInfo changing the item name.
@param a_name (text) : An item name
@result script object : A new instance of PathInfo
   % �&& ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   i t e m   n a m e . 
 @ p a r a m   a _ n a m e   ( t e x t )   :   A n   i t e m   n a m e 
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o 
# '(' i    �)*) I      ��+���� 0 change_name  + ,��, o      ���� 
0 a_name  ��  ��  * k     =-- ./. r     010 I      ��2���� 0 
split_name  2 3��3 o    ���� 
0 a_name  ��  ��  1 J      44 565 o      ���� 0 
a_basename  6 7��7 o      ���� 0 a_suffix  ��  / 8��8 O    =9:9 k    <;; <=< r    #>?> o    ���� 
0 a_name  ? n     @A@ o     "���� 	0 _name  A  g     = BCB r   $ )DED o   $ %���� 0 
a_basename  E n     FGF o   & (���� 0 	_basename  G  g   % &C HIH r   * /JKJ o   * +���� 0 a_suffix  K n     LML o   , .���� 0 _path_extension  M  g   + ,I NON r   0 9PQP I   0 5�������� 0 
build_path  ��  ��  Q n     RSR o   6 8���� 0 	_item_ref  S  g   5 6O T��T L   : <UU  g   : ;��  : I    �������� 	0 clone  ��  ��  ��  ( VWV l     ��������  ��  ��  W XYX l      �Z[�  ZNH!@abstruct
Make a new PathInfo changing the path extension.
@description
If <span class="className">missing value</span> is passed as a parameter, the path extension of the receiver will be deleted.
@param ext (text) : A path extension. It should not start with &quot;.&quot;.
@result script object : a new instance of PathInfo
   [ �\\� ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   p a t h   e x t e n s i o n . 
 @ d e s c r i p t i o n 
 I f   < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   p a t h   e x t e n s i o n   o f   t h e   r e c e i v e r   w i l l   b e   d e l e t e d . 
 @ p a r a m   e x t   ( t e x t )   :   A   p a t h   e x t e n s i o n .   I t   s h o u l d   n o t   s t a r t   w i t h   & q u o t ; . & q u o t ; . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   P a t h I n f o 
Y ]^] i   � �_`_ I      �~a�}�~ 0 change_path_extension  a b�|b o      �{�{ 0 ext  �|  �}  ` O     7cdc k    6ee fgf r    hih o    	�z�z 0 ext  i n     jkj o   
 �y�y 0 _path_extension  k  g   	 
g lml Z    )no�xpn =   qrq o    �w�w 0 ext  r m    �v
�v 
msngo r    sts n   uvu o    �u�u 0 	_basename  v  g    t n     wxw o    �t�t 	0 _name  x  g    �x  p r    )yzy b    %{|{ b    #}~} n   !� o    !�s�s 0 	_basename  �  g    ~ m   ! "�� ���  .| o   # $�r�r 0 ext  z n     ��� o   & (�q�q 	0 _name  �  g   % &m ��� r   * 3��� I   * /�p�o�n�p 0 
build_path  �o  �n  � n     ��� o   0 2�m�m 0 	_item_ref  �  g   / 0� ��l� L   4 6��  g   4 5�l  d I     �k�j�i�k 	0 clone  �j  �i  ^ ��� l     �h�g�f�h  �g  �f  � ��� l      �e���e  ���!@abstruct
Make a new PathInfo changing the folder.
@description
The path form for a parameter must keep consistency with a path passed to the constructor method. If the target was constucted by ((<make_with_posix>)). The path form must be POSIX. If the target was constructed by ((<make_with_hfs>)), the path form must be HFS.
@param a_folder (alias, furl, POSIX path or HFS path) : A reference to a folder
@result script object : A new instance of PathInfo
   � ���� ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   f o l d e r . 
 @ d e s c r i p t i o n 
 T h e   p a t h   f o r m   f o r   a   p a r a m e t e r   m u s t   k e e p   c o n s i s t e n c y   w i t h   a   p a t h   p a s s e d   t o   t h e   c o n s t r u c t o r   m e t h o d .   I f   t h e   t a r g e t   w a s   c o n s t u c t e d   b y   ( ( < m a k e _ w i t h _ p o s i x > ) ) .   T h e   p a t h   f o r m   m u s t   b e   P O S I X .   I f   t h e   t a r g e t   w a s   c o n s t r u c t e d   b y   ( ( < m a k e _ w i t h _ h f s > ) ) ,   t h e   p a t h   f o r m   m u s t   b e   H F S . 
 @ p a r a m   a _ f o l d e r   ( a l i a s ,   f u r l ,   P O S I X   p a t h   o r   H F S   p a t h )   :   A   r e f e r e n c e   t o   a   f o l d e r 
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o 
� ��� i   � ���� I      �d��c�d 0 change_folder  � ��b� o      �a�a 0 a_folder  �b  �c  � k     H�� ��� Z     &���`�_� F     ��� l    	��^�]� E    	��� J     �� ��� m     �\
�\ 
ctxt� ��� m    �[
�[ 
utxt� ��Z� m    �Y
�Y 
TEXT�Z  � n    ��� m    �X
�X 
pcls� o    �W�W 0 a_folder  �^  �]  � l   ��V�U� H    �� D    ��� o    �T�T 0 a_folder  � I    �S�R�Q�S 0 	delimiter  �R  �Q  �V  �U  � r    "��� b     ��� o    �P�P 0 a_folder  � I    �O�N�M�O 0 	delimiter  �N  �M  � o      �L�L 0 a_folder  �`  �_  � ��K� O   ' H��� k   / G�� ��� r   / 4��� o   / 0�J�J 0 a_folder  � n     ��� o   1 3�I�I 0 _folder  �  g   0 1� ��� r   5 :��� m   5 6�H
�H 
msng� n     ��� o   7 9�G�G 	0 _disk  �  g   6 7� ��� r   ; D��� I   ; @�F�E�D�F 0 
build_path  �E  �D  � n     ��� o   A C�C�C 0 	_item_ref  �  g   @ A� ��B� L   E G��  g   E F�B  � I   ' ,�A�@�?�A 	0 clone  �@  �?  �K  � ��� l     �>�=�<�>  �=  �<  � ��� l      �;���;  ���!@abstruct
Make a new PathInfo appending a sub path.
@description
The path form for a parameter must keep consistency with a path passed to the constructor method. If the target was constucted by ((<make_with_posix>)). The path form must be POSIX. If the target was constructed by ((<make_with_hfs>)), the path form must be HFS.
@param subpath (text)  : A relative path from the target.
@result script object : a new instance of PathInfo
   � ���l ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   a p p e n d i n g   a   s u b   p a t h . 
 @ d e s c r i p t i o n 
 T h e   p a t h   f o r m   f o r   a   p a r a m e t e r   m u s t   k e e p   c o n s i s t e n c y   w i t h   a   p a t h   p a s s e d   t o   t h e   c o n s t r u c t o r   m e t h o d .   I f   t h e   t a r g e t   w a s   c o n s t u c t e d   b y   ( ( < m a k e _ w i t h _ p o s i x > ) ) .   T h e   p a t h   f o r m   m u s t   b e   P O S I X .   I f   t h e   t a r g e t   w a s   c o n s t r u c t e d   b y   ( ( < m a k e _ w i t h _ h f s > ) ) ,   t h e   p a t h   f o r m   m u s t   b e   H F S . 
 @ p a r a m   s u b p a t h   ( t e x t )     :   A   r e l a t i v e   p a t h   f r o m   t h e   t a r g e t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   P a t h I n f o 
� ��� i   � ���� I      �:��9�: 	0 child  � ��8� o      �7�7 0 subpath  �8  �9  � k     2�� ��� r     ��� I     �6�5�4�6 0 as_text  �5  �4  � o      �3�3 
0 a_path  � ��� Z     ���2�1� H    �� D    ��� o    	�0�0 
0 a_path  � I   	 �/�.�-�/ 0 	delimiter  �.  �-  � r    ��� b    ��� o    �,�, 
0 a_path  � I    �+�*�)�+ 0 	delimiter  �*  �)  � o      �(�( 
0 a_path  �2  �1  � ��'� L   ! 2�� I   ! 1�&��%�& 0 make_with_opts  � ��� b   " %��� o   " #�$�$ 
0 a_path  � o   # $�#�# 0 subpath  � ��"� K   % -�� �!�� �! 0 prefering_posix  � I   & +���� 0 is_posix  �  �  �   �"  �%  �'  � ��� l     ����  �  �  � ��� l      ����  � � z!@abstruct
Make a new PathInfo which refering the same file to the target.
@result script object : a instance of PathInfo
   � ��� � ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   w h i c h   r e f e r i n g   t h e   s a m e   f i l e   t o   t h e   t a r g e t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   i n s t a n c e   o f   P a t h I n f o 
� ��� i   � ���� I      ���� 	0 clone  �  �  � L     �� I     ���� 0 make_with_vars  �    1    �
� 
pare  n    o    �� 	0 _disk    f      n   
	 o    
�� 0 _folder  	  f     

 n  
  o    �� 	0 _name    f   
   n    o    �� 0 	_basename    f      n    o    �� 0 _path_extension    f      n    o    �� 0 
_is_folder    f     � n    o    �� 0 	_item_ref    f    �  �  �  l     �
�	��
  �	  �     l      �!"�  !  	 private    " �##    p r i v a t e    $%$ i   � �&'& I      ���� 0 
build_path  �  �  ' k     @(( )*) Z     +,�-+ =    ./. n    010 o    �� 0 _path_extension  1  f     / m    �
� 
msng, r    232 n   454 o   	 � �  	0 _name  5  f    	3 o      ���� 
0 a_name  �  - r    676 l   8����8 b    9:9 b    ;<; n   =>= o    ���� 0 	_basename  >  f    < m    ?? �@@  .: n   ABA o    ���� 0 _path_extension  B  f    ��  ��  7 o      ���� 
0 a_name  * CDC Z    0EF����E n    GHG o    ���� 0 
_is_folder  H  f    F r   # ,IJI b   # *KLK o   # $���� 
0 a_name  L I   $ )�������� 0 	delimiter  ��  ��  J o      ���� 
0 a_name  ��  ��  D MNM r   1 ;OPO I   1 9��Q���� 0 to_text  Q R��R n  2 5STS o   3 5���� 0 _folder  T  f   2 3��  ��  P o      ���� 0 folder_path  N U��U L   < @VV b   < ?WXW o   < =���� 0 folder_path  X o   = >���� 
0 a_name  ��  % YZY l     ��������  ��  ��  Z [\[ l      ��]^��  ]    methods for PathElements    ^ �__ 4   m e t h o d s   f o r   P a t h E l e m e n t s  \ `a` i   � �bcb I      ��d���� 0 item_at  d e��e o      ���� 0 n  ��  ��  c L     ff n    ghg n   iji 4    ��k
�� 
cobjk o    ���� 0 n  j o    ���� 0 	_contents  h  f     a lml l     ��������  ��  ��  m non i   � �pqp I      ��r���� 0 compose  r sts o      ���� 0 n1  t uvu o      ���� 0 n2  v w��w o      ���� 0 folder_flag  ��  ��  q k     :xx yzy r     {|{ n    }~} 1    ��
�� 
txdl~ 1     ��
�� 
ascr| o      ���� 0 tid  z � r    ��� J    �� ���� n   	��� o    	���� 0 
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
ascr� ���� L   8 :�� o   8 9���� 0 a_result  ��  o ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 make_path_elements  � ���� o      ���� 
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
0 a_name  ��  ��  � k     :�� ��� r     ��� I      ������� 0 
split_name  �  ��  o    ���� 
0 a_name  ��  ��  � J        n      o    �� 0 	_basename    f     �~ n      o    �}�} 0 _path_extension    f    �~  � 	
	 r     o    �|�| 
0 a_name   n      o    �{�{ 	0 _name    f    
  Z     7�z�y >    ' n     % m   # %�x
�x 
pcls n    # o   ! #�w�w 0 	_item_ref    f     ! m   % &�v
�v 
alis r   * 3 I   * /�u�t�s�u 0 
build_path  �t  �s   n      o   0 2�r�r 0 	_item_ref    g   / 0�z  �y   �q L   8 :  f   8 9�q  �   l     �p�o�n�p  �o  �n    !"! l      �m#$�m  #!@group Error Numbers and Error Messages
* number : 980
	* message : Unknown data type. PathInfo can't convert to a path.
	* Raise when a parameter passed to ((<make_with>)), ((<make_with_hfs>)), ((<make_with_posix>)),((<change_folder>)) can not be treated as a file reference.
   $ �%%, ! @ g r o u p   E r r o r   N u m b e r s   a n d   E r r o r   M e s s a g e s 
 *   n u m b e r   :   9 8 0 
 	 *   m e s s a g e   :   U n k n o w n   d a t a   t y p e .   P a t h I n f o   c a n ' t   c o n v e r t   t o   a   p a t h . 
 	 *   R a i s e   w h e n   a   p a r a m e t e r   p a s s e d   t o   ( ( < m a k e _ w i t h > ) ) ,   ( ( < m a k e _ w i t h _ h f s > ) ) ,   ( ( < m a k e _ w i t h _ p o s i x > ) ) , ( ( < c h a n g e _ f o l d e r > ) )   c a n   n o t   b e   t r e a t e d   a s   a   f i l e   r e f e r e n c e . 
" &'& l     �l�k�j�l  �k  �j  ' ()( i   � �*+* I     �i�h�g
�i .aevtoappnull  �   � ****�h  �g  + k     ,, -.- l     �f/0�f  /  return debug()   0 �11  r e t u r n   d e b u g ( ). 2�e2 Q     3453 I   �d67
�d .HBsushHBTEXT    ��� file6 l   8�c�b8 I   �a9�`
�a .earsffdralis        afdr9  f    �`  �c  �b  7 �_:�^
�_ 
rcIP: m   	 
�]
�] boovtrue�^  4 R      �\;<
�\ .ascrerr ****      � ****; o      �[�[ 0 msg  < �Z=�Y
�Z 
errn= o      �X�X 	0 errno  �Y  5 I   �W>�V
�W .sysodisAaleR        TEXT> l   ?�U�T? b    @A@ b    BCB o    �S�S 0 msg  C o    �R
�R 
ret A o    �Q�Q 	0 errno  �U  �T  �V  �e  ) DED l     �P�O�N�P  �O  �N  E FGF i   � �HIH I      �M�L�K�M 	0 debug  �L  �K  I k     &JJ KLK l     �JMN�J  M ! boot (module loader) for me   N �OO 6 b o o t   ( m o d u l e   l o a d e r )   f o r   m eL PQP l     �I�H�G�I  �H  �G  Q RSR l     �FTU�F  T ~ xset a_path to "/Volumes/Macintosh HD/Users/tkurita/Dev/Projects/TeX Tools for mi/�T���v��/insert-file/sample-figure.pdf"   U �VV � s e t   a _ p a t h   t o   " / V o l u m e s / M a c i n t o s h   H D / U s e r s / t k u r i t a / D e v / P r o j e c t s / T e X   T o o l s   f o r   m i /0�0�0�0� / i n s e r t - f i l e / s a m p l e - f i g u r e . p d f "S WXW l     �EYZ�E  Y K Eset a_path to "Macintosh HD:Users:tkurita:BackdropUserBackground.png"   Z �[[ � s e t   a _ p a t h   t o   " M a c i n t o s h   H D : U s e r s : t k u r i t a : B a c k d r o p U s e r B a c k g r o u n d . p n g "X \]\ l     �D^_�D  ^ Q Kset a_path to alias "Macintosh HD:Users:tkurita:BackdropUserBackground.png"   _ �`` � s e t   a _ p a t h   t o   a l i a s   " M a c i n t o s h   H D : U s e r s : t k u r i t a : B a c k d r o p U s e r B a c k g r o u n d . p n g "] aba r     cdc c     efe m     gg �hh R / U s e r s / t k u r i t a / B a c k d r o p U s e r B a c k g r o u n d . p n gf m    �C
�C 
psxfd o      �B�B 
0 a_path  b iji l   �Akl�A  k ? 9set a_path to "/Users/tkurita/BackdropUserBackground.png"   l �mm r s e t   a _ p a t h   t o   " / U s e r s / t k u r i t a / B a c k d r o p U s e r B a c k g r o u n d . p n g "j non L    pp n   qrq I    �@�?�>�@ 0 volume_name  �?  �>  r I    �=s�<�= 0 	make_with  s t�;t o    �:�: 
0 a_path  �;  �<  o uvu r    wxw 4    �9y
�9 
alisy m    zz �{{  M a c i n t o s h   H Dx o      �8�8 
0 a_path  v |}| L    $~~ n   #� I    #�7�6�5�7 0 	item_name  �6  �5  � I    �4��3�4 0 	make_with  � ��2� o    �1�1 
0 a_path  �2  �3  } ��0� l  % %�/�.�-�/  �.  �-  �0  G ��� l     �,�+�*�,  �+  �*  � ��)� l     �(�'�&�(  �'  �&  �)       .�%� ��������������������������������������������%  � ,�$�#�"�!� ����������������������
�	��������� ��������������
�$ 
pnam�# 0 name_of  �" 0 basename_of  �! 0 path_extension_of  �  0 	suffix_of  � 0 
split_name  � 0 	folder_of  � *0 posixpathtranslator POSIXPathTranslator� &0 hfspathtranslator HFSPathTranslator� 0 	make_with  � 0 make_with_hfs  � 0 make_with_posix  � 0 make_with_pathtrans  � 0 make_with_opts  � 0 make_with_vars  � 0 	item_name  � 0 basename  � 0 path_extension  � 0 volume_name  � 0 
folder_ref  � 0 	is_folder  � 0 item_ref  � 0 item_exists  � 0 item_exists_without_update  � 0 is_posix  � 0 as_alias  �
 0 as_furl  �	 0 
posix_path  � 0 normalized_posix_path  � 0 parent_folder  � 0 change_name  � 0 change_path_extension  � 0 change_folder  � 	0 child  � 	0 clone  � 0 
build_path  �  0 item_at  �� 0 compose  �� 0 make_path_elements  �� 0 	decompose  �� 0 	delimiter  �� 0 set_name  
�� .aevtoappnull  �   � ****�� 	0 debug  � �� )���������� 0 name_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ������ 0 	make_with  �� 0 	item_name  �� *�k+  j+ � �� ;���������� 0 basename_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ������ 0 	make_with  �� 0 basename  �� *�k+  j+ � �� M���������� 0 path_extension_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ������ 0 	make_with  �� 0 path_extension  �� *�el+  j+ � �� \���������� 0 	suffix_of  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ���� 0 path_extension_of  �� *�k+  � �� l���������� 0 
split_name  �� ����� �  ���� 
0 a_name  ��  � ������������ 
0 a_name  �� 0 tid  �� 0 name_elements  �� 0 a_suffix  �� 0 
a_basename  � 	 w���� �����������
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
0 a_disk  � ��������&*
�� 
leng�� 0 item_at  
�� 
bool�� 0 compose  �� 9��,E�O�k	 �lk+ � �& �l �kmem+ E�Y �E�Y �E�O�� ��3���������� 0 hfs_path  ��  ��  �  � ���������� 0 	_item_ref  
�� 
psxp
�� 
psxf
�� 
utxt�� )�,�,�&�&� ��C���������� 0 as_text  ��  ��  �  � ������ 0 	_item_ref  
�� 
psxp�� )�,�,E� ��M  ��� &0 hfspathtranslator HFSPathTranslator�  �R������ �������������� 0 
_delimiter  �� 0 to_text  �� 0 to_alias  �� 0 resolve_disk  �� 0 hfs_path  �� 0 as_text  � ��Y��~���}�� 0 to_text  � �|��| �  �{�{ 
0 a_file  �~  � �z�z 
0 a_file  � �y
�y 
utxt�} ��&� �xd�w�v���u�x 0 to_alias  �w �t��t �  �s�s 
0 a_file  �v  � �r�r 
0 a_file  � �q
�q 
alis�u ��&� �po�o�n���m�p 0 resolve_disk  �o �l��l �  �k�k 0 path_elements  �n  � �j�j 0 path_elements  � �i�i 0 item_at  �m �kk+  b   %� �h�g�f���e�h 0 hfs_path  �g  �f  �  � �d�c�d 0 	_item_ref  
�c 
utxt�e )�,�&� �b��a�`���_�b 0 as_text  �a  �`  �  � �^�]�^ 0 	_item_ref  
�] 
utxt�_ )�,�&� �\��[�Z���Y�\ 0 	make_with  �[ �X��X �  �W�W 
0 a_path  �Z  � �V�U�T�S�V 
0 a_path  �U 0 a_class  �T 0 hf  �S 0 	pathtrans  � �R�Q�P�O��N�M�L�K��J
�R 
pcls
�Q 
ctxt
�P 
utxt
�O 
TEXT
�N afdrcusr
�M .earsffdralis        afdr
�L 
psxp
�K 
leng�J 0 make_with_pathtrans  �Y s��,E�O���mv� T�� 4�j �,E�O��,l ��[�\[Zm\Zi2%E�Y �E�Ob  E�Y �� b  E�Y 	b  E�Y 	b  E�O*��l+ 
� �I��H�G���F�I 0 make_with_hfs  �H �E��E �  �D�D 
0 a_path  �G  � �C�C 
0 a_path  � �B�B 0 make_with_pathtrans  �F *�b  l+  � �A�@�?���>�A 0 make_with_posix  �@ �=��= �  �<�< 
0 a_path  �?  � �;�; 
0 a_path  � �:�: 0 make_with_pathtrans  �> *�b  l+  � �9�8�7���6�9 0 make_with_pathtrans  �8 �5��5 �  �4�3�4 
0 a_path  �3 0 	pathtrans  �7  � �2�1�0�/�.�-�,�+�*�)�(�2 
0 a_path  �1 0 	pathtrans  �0 0 a_class  �/ 0 is_text  �. 0 path_elements  �- 
0 a_disk  �, 
0 a_name  �+ 0 folder_flag  �* 0 a_folder  �) 0 
a_basename  �( 0 a_suffix  � �'�&�%�$�#�"�!� ����u����������������
�' 
pcls
�& 
utxt
�% 
TEXT
�$ 
ctxt
�# 
alis�" 0 to_text  
�! 
fss 
�  
furl�  �  
� 
errn��� 0 	decompose  � 0 resolve_disk  � 0 to_alias  � 0 item_at  ���
� 
leng
� 
desk���� 0 compose  
� 
msng� 0 
split_name  
� 
cobj� � 0 make_with_vars  �6\��,E�OfE�O���mv� eE�Y c��  ��k+ E�Y R��lv� & ���&k+ E�W X  	��k+ E�OeE�Y % 
��&E�W X  	)��l��&�%O��k+ E�O��k+ E�O��k+ E�O� ��k+ E�Y hO�ik+ E�O�a   MeE�O�a k+ E�O�a ,l  a  	*a ,E�UY  �ka em+ E�O� ��k+ E�Y hY 6fE�O�a ,k #�ka em+ E�O� ��k+ E�Y hY a E�O*�k+ E[a k/E�Z[a l/E�ZO*��������a + � �+�����
� 0 make_with_opts  � �	��	 �  ��� 
0 a_path  � ���� 0 prefering_posix  � 
0 a_bool  �  �  � ���� 
0 a_path  � 
0 a_bool  � 0 	pathtrans  � �� 0 make_with_pathtrans  �
 � b  E�Y 	b  E�O*��l+  � � G���������  0 make_with_vars  �� ����� �  ������������������ 0 	pathtrans  �� 
0 a_disk  �� 0 a_folder  �� 
0 a_name  �� 0 
a_basename  �� 0 a_suffix  �� 0 folder_flag  �� 
0 a_path  ��  � 	�������������������� 0 	pathtrans  �� 
0 a_disk  �� 0 a_folder  �� 
0 a_name  �� 0 
a_basename  �� 0 a_suffix  �� 0 folder_flag  �� 
0 a_path  �� 0 pathinfo PathInfo� ��[ �� 0 pathinfo PathInfo  ��������
�� .ascrinit****      � **** k     9 ] ` c f i		 l

 o r����  ��  ��   ����������������
�� 
pare�� 	0 _disk  �� 0 _folder  �� 	0 _name  �� 0 	_basename  �� 0 _path_extension  �� 0 
_is_folder  �� 0 	_item_ref   ����������������
�� 
pare�� 	0 _disk  �� 0 _folder  �� 	0 _name  �� 0 	_basename  �� 0 _path_extension  �� 0 
_is_folder  �� 0 	_item_ref  �� :b   N  Ob  �Ob  �Ob  �Ob  �Ob  �Ob  �Ob  ��� ��K S�O�� ����������� 0 	item_name  ��  ��     ���� 	0 _name  �� )�,E� ����������� 0 basename  ��  ��     ���� 0 	_basename  �� )�,E� ����������� 0 path_extension  ��  ��     ���� 0 _path_extension  �� )�,E� ����������� 0 volume_name  ��  ��   �������� 0 a_result  �� 
0 a_path  �� 0 tid   
������������������� 	0 _disk  �� 0 	make_with  �� 0 	item_name  �� 0 hfs_path  
�� 
ascr
�� 
txdl
�� 
citm�� N)�,� *)�,k+ j+ E�Y hO�� �Y hO*j+ E�O��,E�O�kv��,FO��k/E�O���,FO�� ���������� 0 
folder_ref  ��  ��     ���� 0 _folder  �� )�,E� ���������� 0 	is_folder  ��  ��     ���� 0 
_is_folder  �� )�,E� ���������� 0 item_ref  ��  ��     ���� 0 	_item_ref  �� )�,E� ��,�������� 0 item_exists  ��  ��     �������������� 0 	_item_ref  �� 0 to_text  �� 0 to_alias  �� 0 _folder  ��  ��  �� 6 +**)�,k+ k+ )�,FO**)�,k+ k+ )�,FOeW X  hOf� ��Y�������� 0 item_exists_without_update  ��  ��     ������������ 0 	_item_ref  �� 0 to_text  �� 0 to_alias  ��  ��  ��   **)�,k+ k+ OeW X  hOf� ��v�������� 0 is_posix  ��  ��     ��|�� 0 
_delimiter  �� )�,� � ������� !���� 0 as_alias  ��  ��     ! �������������� 0 	_item_ref  
�� 
pcls
�� 
alis�� 0 to_text  �� 0 to_alias  �� 0 _folder  �� 8)�,�,� (**)�,k+ k+ )�,FO**)�,k+ k+ )�,FY hO)�,E� �������"#���� 0 as_furl  ��  ��  "  # ������ 0 	_item_ref  
�� 
furl�� )�,�&� �����~$%�}�� 0 
posix_path  �  �~  $  % �|�{�| 0 	_item_ref  
�{ 
psxp�} )�,�,E� �z��y�x&'�w�z 0 normalized_posix_path  �y  �x  & �v�v 
0 a_path  ' �u��t�s�u 0 
posix_path  
�t 
ctxt�s���w #*j+  E�O�� �[�\[Zk\Z�2E�Y hO�� �r�q�p()�o�r 0 parent_folder  �q  �p  (  ) �n�m�l�k�n 0 
folder_ref  �m 0 prefering_posix  �l 0 is_posix  �k 0 make_with_opts  �o **j+  �*j+ ll+ � �j*�i�h*+�g�j 0 change_name  �i �f,�f ,  �e�e 
0 a_name  �h  * �d�c�b�d 
0 a_name  �c 0 
a_basename  �b 0 a_suffix  + �a�`�_�^�]�\�[�Z�a 0 
split_name  
�` 
cobj�_ 	0 clone  �^ 	0 _name  �] 0 	_basename  �\ 0 _path_extension  �[ 0 
build_path  �Z 0 	_item_ref  �g >*�k+  E[�k/E�Z[�l/E�ZO*j+   �*�,FO�*�,FO�*�,FO*j+ *�,FO*U� �Y`�X�W-.�V�Y 0 change_path_extension  �X �U/�U /  �T�T 0 ext  �W  - �S�S 0 ext  . �R�Q�P�O�N��M�L�R 	0 clone  �Q 0 _path_extension  
�P 
msng�O 0 	_basename  �N 	0 _name  �M 0 
build_path  �L 0 	_item_ref  �V 8*j+   0�*�,FO��  *�,*�,FY *�,�%�%*�,FO*j+ *�,FO*U� �K��J�I01�H�K 0 change_folder  �J �G2�G 2  �F�F 0 a_folder  �I  0 �E�E 0 a_folder  1 �D�C�B�A�@�?�>�=�<�;�:�9
�D 
ctxt
�C 
utxt
�B 
TEXT
�A 
pcls�@ 0 	delimiter  
�? 
bool�> 	0 clone  �= 0 _folder  
�< 
msng�; 	0 _disk  �: 0 
build_path  �9 0 	_item_ref  �H I���mv��,	 �*j+ �& �*j+ %E�Y hO*j+  �*�,FO�*�,FO*j+ 
*�,FO*U� �8��7�634�5�8 	0 child  �7 �45�4 5  �3�3 0 subpath  �6  3 �2�1�2 0 subpath  �1 
0 a_path  4 �0�/�.�-�,�0 0 as_text  �/ 0 	delimiter  �. 0 prefering_posix  �- 0 is_posix  �, 0 make_with_opts  �5 3*j+  E�O�*j+  �*j+ %E�Y hO*��%�*j+ ll+ � �+��*�)67�(�+ 	0 clone  �*  �)  6  7 
�'�&�%�$�#�"�!� ��
�' 
pare�& 	0 _disk  �% 0 _folder  �$ 	0 _name  �# 0 	_basename  �" 0 _path_extension  �! 0 
_is_folder  �  0 	_item_ref  � � 0 make_with_vars  �( **�,)�,)�,)�,)�,)�,)�,)�,�+ 	� �'��89�� 0 
build_path  �  �  8 ��� 
0 a_name  � 0 folder_path  9 	����?����� 0 _path_extension  
� 
msng� 	0 _name  � 0 	_basename  � 0 
_is_folder  � 0 	delimiter  � 0 _folder  � 0 to_text  � A)�,�  
)�,E�Y )�,�%)�,%E�O)�,E �*j+ %E�Y hO*)�,k+ E�O��%� �c��:;�� 0 item_at  � �<� <  �
�
 0 n  �  : �	�	 0 n  ; ��� 0 	_contents  
� 
cobj� 	)�,�/E� �q��=>�� 0 compose  � �?� ?  �� ��� 0 n1  �  0 n2  �� 0 folder_flag  �  = ������������ 0 n1  �� 0 n2  �� 0 folder_flag  �� 0 tid  �� 0 a_result  > ������������
�� 
ascr
�� 
txdl�� 0 
_delimiter  �� 0 	_contents  
�� 
cobj
�� 
utxt� ;��,E�O)�,kv��,FO)�,[�\[Z�\Z�2�&E�O� �)�,%E�Y hO���,FO�� �������@A���� 0 make_path_elements  �� ��B�� B  ���� 
0 a_list  ��  @ �������� 
0 a_list  �� 0 a_parent  �� 0 pathelements pathElementsA ���C�� 0 pathelements pathElementsC ��D����EF��
�� .ascrinit****      � ****D k     GG �HH �II �����  ��  ��  E ������
�� 
pare�� 0 	_contents  
�� 
lengF ������
�� 
pare�� 0 	_contents  
�� 
leng�� b  N  Ob   �Ob   �,E��� )E�O��K S�� �������JK���� 0 	decompose  �� ��L�� L  ���� 
0 a_path  ��  J �������� 
0 a_path  �� 0 tid  �� 
0 a_list  K ����������
�� 
ascr
�� 
txdl�� 0 
_delimiter  
�� 
citm�� 0 make_path_elements  �� "��,E�O)�,��,FO��-E�O���,FO*�k+ � �������MN���� 0 	delimiter  ��  ��  M  N ���� 0 
_delimiter  �� )�,E� �������OP���� 0 set_name  �� ��Q�� Q  ���� 
0 a_name  ��  O ���� 
0 a_name  P 	�������������������� 0 
split_name  
�� 
cobj�� 0 	_basename  �� 0 _path_extension  �� 	0 _name  �� 0 	_item_ref  
�� 
pcls
�� 
alis�� 0 
build_path  �� ;*�k+  E[�k/)�,FZ[�l/)�,FZO�)�,FO)�,�,� *j+ *�,FY hO)� ��+����RS��
�� .aevtoappnull  �   � ****��  ��  R ������ 0 msg  �� 	0 errno  S ��������T����
�� .earsffdralis        afdr
�� 
rcIP
�� .HBsushHBTEXT    ��� file�� 0 msg  T ������
�� 
errn�� 	0 errno  ��  
�� 
ret 
�� .sysodisAaleR        TEXT��   )j  �el W X  ��%�%j � ��I����UV���� 	0 debug  ��  ��  U ���� 
0 a_path  V g��������z��
�� 
psxf�� 0 	make_with  �� 0 volume_name  
�� 
alis�� 0 	item_name  �� '��&E�O*�k+ j+ O)��/E�O*�k+ j+ OP ascr  ��ޭ