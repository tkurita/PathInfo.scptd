FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007-2020 Kurita Tetsuro

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	    C o p y r i g h t   ( C )   2 0 0 7 - 2 0 2 0   K u r i t a   T e t s u r o 
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
 l     ��������  ��  ��        x     
�� ����    2   ��
�� 
osax��        x   
 �� ����    4    �� 
�� 
frmk  m       �    F o u n d a t i o n��        j    �� �� 0 nsurl NSURL  4    �� 
�� 
pcls  m       �   
 N S U R L      j     �� 
�� 
pnam  m       �    P a t h I n f o     !   l     ��������  ��  ��   !  " # " l      �� $ %��   $	C	=!@references
Home page || http://www.script-factory.net/XModules/PathInfo/en/index.html
ChangeLog || http://www.script-factory.net/XModules/PathInfo/changelog.html
Repository || https://github.com/tkurita/PathInfo.scptd

@title PathInfo Reference
* Version : 1.3.2
* Author : Kurita Tetsuro ((<scriptfactory@mac.com>))
* Requirements : OS X 10.9 or later
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
    % � & &z ! @ r e f e r e n c e s 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / P a t h I n f o / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / P a t h I n f o / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / P a t h I n f o . s c p t d 
 
 @ t i t l e   P a t h I n f o   R e f e r e n c e 
 *   V e r s i o n   :   1 . 3 . 2 
 *   A u t h o r   :   K u r i t a   T e t s u r o   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e q u i r e m e n t s   :   O S   X   1 0 . 9   o r   l a t e r 
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
 #  ' ( ' l     ��������  ��  ��   (  ) * ) l      �� + ,��   + D >!@group Class methods
Obtain information from a path quickly.
    , � - - | ! @ g r o u p   C l a s s   m e t h o d s 
 O b t a i n   i n f o r m a t i o n   f r o m   a   p a t h   q u i c k l y . 
 *  . / . l     ��������  ��  ��   /  0 1 0 l      �� 2 3��   260!@abstruct
Obtain a name from a reference to a file/folder.
@param an_item (a reference to file/folder) : 
Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.
@result
text : a name of the passed item
    3 � 4 4` ! @ a b s t r u c t 
 O b t a i n   a   n a m e   f r o m   a   r e f e r e n c e   t o   a   f i l e / f o l d e r . 
 @ p a r a m   a n _ i t e m   ( a   r e f e r e n c e   t o   f i l e / f o l d e r )   :   
 A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l . 
 @ r e s u l t 
 t e x t   :   a   n a m e   o f   t h e   p a s s e d   i t e m 
 1  5 6 5 i   ! $ 7 8 7 I      �� 9���� 0 name_of   9  :�� : o      ���� 0 an_item  ��  ��   8 L      ; ; n    
 < = < I    
�������� 0 	item_name  ��  ��   = I     �� >���� 0 	make_with   >  ?�� ? o    ���� 0 an_item  ��  ��   6  @ A @ l     ��������  ��  ��   A  B C B l      �� D E��   D!@abstruct
Obtain a name of the item with removing a path extension.
Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.
@result
Unicode text : basename of the passed item
    E � F F( ! @ a b s t r u c t 
 O b t a i n   a   n a m e   o f   t h e   i t e m   w i t h   r e m o v i n g   a   p a t h   e x t e n s i o n . 
 A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l . 
 @ r e s u l t 
 U n i c o d e   t e x t   :   b a s e n a m e   o f   t h e   p a s s e d   i t e m 
 C  G H G i   % ( I J I I      �� K���� 0 basename_of   K  L�� L o      ���� 0 an_item  ��  ��   J L      M M n    
 N O N I    
�������� 0 basename  ��  ��   O I     �� P���� 0 	make_with   P  Q�� Q o    ���� 0 an_item  ��  ��   H  R S R l     ��������  ��  ��   S  T U T l      �� V W��   V��!@abstruct
Obtain a path extension of the item. The result does not starts with ".".
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.
@param an_item (a reference to file/folder) : 
Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.
@result
text : A path extension
    W � X X~ ! @ a b s t r u c t 
 O b t a i n   a   p a t h   e x t e n s i o n   o f   t h e   i t e m .   T h e   r e s u l t   d o e s   n o t   s t a r t s   w i t h   " . " . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n . 
 @ p a r a m   a n _ i t e m   ( a   r e f e r e n c e   t o   f i l e / f o l d e r )   :   
 A l m o s t   t y p e s   o f   r e f e r e n c e s   t o   a   f i l e   o r   a   f o l d e r   c a n   b e   a c c e p t e d .   e . g . )   H F S   p a t h ,   P O S I X   p a t h ,   a l i a s ,   f i l e   s p e c i f i c a t i o n ,   r e f e r e n c e   f o r m   o f   F i n d e r   a n d   f u r l . 
 @ r e s u l t 
 t e x t   :   A   p a t h   e x t e n s i o n 
 U  Y Z Y i   ) , [ \ [ I      �� ]���� 0 path_extension_of   ]  ^�� ^ o      ���� 0 an_item  ��  ��   \ L      _ _ n     ` a ` I    �������� 0 path_extension  ��  ��   a I     �� b���� 0 	make_with   b  c d c o    ���� 0 an_item   d  e�� e m    ��
�� boovtrue��  ��   Z  f g f l     ��������  ��  ��   g  h i h i   - 0 j k j I      �� l���� 0 	suffix_of   l  m�� m o      ���� 0 an_item  ��  ��   k L      n n I     �� o���� 0 path_extension_of   o  p�� p o    ���� 0 an_item  ��  ��   i  q r q l     ��������  ��  ��   r  s t s l      �� u v��   u � �!@abstruct
Split a file name into a base name and a path extension.
@param a_name (text) : A file name
@result list of text: {basename, path_extension}
    v � w w0 ! @ a b s t r u c t 
 S p l i t   a   f i l e   n a m e   i n t o   a   b a s e   n a m e   a n d   a   p a t h   e x t e n s i o n . 
 @ p a r a m   a _ n a m e   ( t e x t )   :   A   f i l e   n a m e 
 @ r e s u l t   l i s t   o f   t e x t :   { b a s e n a m e ,   p a t h _ e x t e n s i o n } 
 t  x y x i   1 4 z { z I      �� |���� 0 
split_name   |  }�� } o      ���� 
0 a_name  ��  ��   { k     F ~ ~   �  Z     @ � ��� � � E      � � � o     ���� 
0 a_name   � m     � � � � �  . � k    6 � �  � � � r     � � � n   	 � � � 1    	��
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
ascr��  ��   � k   9 @ � �  � � � r   9 < � � � o   9 :���� 
0 a_name   � o      ���� 0 
a_basename   �  ��� � r   = @ � � � m   = >��
�� 
msng � o      ���� 0 a_suffix  ��   �  ��� � L   A F � � J   A E � �  � � � o   A B���� 0 
a_basename   �  ��� � o   B C���� 0 a_suffix  ��  ��   y  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �!@abstruct
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
 �  � � � i   5 8 � � � I      �� ���� 0 	folder_of   �  ��~ � o      �}�} 0 an_item  �~  �   � L      � � n    
 � � � I    
�|�{�z�| 0 
folder_ref  �{  �z   � I     �y ��x�y 0 	make_with   �  ��w � o    �v�v 0 an_item  �w  �x   �  � � � l     �u�t�s�u  �t  �s   �  � � � l      �r � ��r   � " !@group Constructor Methods     � � � � 8 ! @ g r o u p   C o n s t r u c t o r   M e t h o d s   �  � � � l     �q�p�o�q  �p  �o   �  � � � h   9 B�n ��n *0 posixpathtranslator POSIXPathTranslator � k       � �  � � � j     �m ��m 0 
_delimiter   � m      � � � � �  / �  � � � l     �l�k�j�l  �k  �j   �  � � � i     � � � I      �i ��h�i 0 to_text   �  ��g � o      �f�f 
0 a_file  �g  �h   � L      � � n     � � � 1    �e
�e 
psxp � o     �d�d 
0 a_file   �  � � � l     �c�b�a�c  �b  �a   �  � � � i    
 � � � I      �` ��_�` 0 to_alias   �  ��^ � o      �]�] 
0 a_file  �^  �_   � L      � � c      � � � l     ��\�[ � c      �  � o     �Z�Z 
0 a_file    m    �Y
�Y 
psxf�\  �[   � m    �X
�X 
alis �  l     �W�V�U�W  �V  �U    i     I      �T�S�T 0 resolve_disk   �R o      �Q�Q 0 path_elements  �R  �S   k     8		 

 r      n     1    �P
�P 
leng o     �O�O 0 path_elements   o      �N�N 0 n_elems    Z    5�M F     l   	�L�K ?    	 o    �J�J 0 n_elems   m    �I�I �L  �K   l   �H�G =    n    I    �F�E�F 0 item_at    �D  m    �C�C �D  �E   o    �B�B 0 path_elements   m    !! �""  V o l u m e s�H  �G   Z    /#$�A%# l   &�@�?& ?    '(' o    �>�> 0 n_elems  ( m    �=�= �@  �?  $ r    ))*) n   '+,+ I     '�<-�;�< 0 compose  - ./. m     !�:�: / 010 m   ! "�9�9 1 2�82 m   " #�7
�7 boovtrue�8  �;  , o     �6�6 0 path_elements  * o      �5�5 
0 a_disk  �A  % r   , /343 m   , -55 �66  /4 o      �4�4 
0 a_disk  �M   r   2 5787 m   2 399 �::  /8 o      �3�3 
0 a_disk   ;�2; L   6 8<< o   6 7�1�1 
0 a_disk  �2   =>= l     �0�/�.�0  �/  �.  > ?@? i    ABA I      �-�,�+�- 0 hfs_path  �,  �+  B L     
CC c     	DED l    F�*�)F c     GHG l    I�(�'I n     JKJ 1    �&
�& 
psxpK n    LML o    �%�% 0 	_item_ref  M  f     �(  �'  H m    �$
�$ 
psxf�*  �)  E m    �#
�# 
utxt@ NON l     �"�!� �"  �!  �   O P�P i    QRQ I      ���� 0 as_text  �  �  R L     SS n    TUT n   VWV 1    �
� 
psxpW o    �� 0 	_item_ref  U  f     �   � XYX l     ����  �  �  Y Z[Z h   C N�\� &0 hfspathtranslator HFSPathTranslator\ k      ]] ^_^ j     �`� 0 
_delimiter  ` m     aa �bb  :_ cdc l     ����  �  �  d efe i    ghg I      �i�� 0 to_text  i j�j o      �� 
0 a_file  �  �  h L     kk c     lml o     �� 
0 a_file  m m    �
� 
utxtf non l     ��
�	�  �
  �	  o pqp i    
rsr I      �t�� 0 to_alias  t u�u o      �� 
0 a_file  �  �  s L     vv c     wxw o     �� 
0 a_file  x m    �
� 
alisq yzy l     ��� �  �  �   z {|{ i    }~} I      ������ 0 resolve_disk   ���� o      ���� 0 path_elements  ��  ��  ~ L     �� l    ������ b     ��� n    ��� I    ������� 0 item_at  � ���� m    ���� ��  ��  � o     ���� 0 path_elements  � o    ���� 0 
_delimiter  ��  ��  | ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 hfs_path  ��  ��  � L     �� c     ��� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
utxt� ��� l     ��������  ��  ��  � ���� i    ��� I      �������� 0 as_text  ��  ��  � L     �� c     ��� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
utxt��  [ ��� l     ��������  ��  ��  � ��� l      ������  �!@abstruct
Make a PathInfo instance for a file reference.
@description
If a parameter is text and  does not starts with "/", a parameter is HFS path. And HFS path is used for internal processings. Otherwise, a POSIX path is userd for internal processings.

If a path ending with a path delimiter (&quot;/&quot; or &quot;:&quot;) is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.
@param a_path (alias, furl, POSIX path or HFS path) 
@result script object : A new instance of PathInfo
   � ���* ! @ a b s t r u c t 
 M a k e   a   P a t h I n f o   i n s t a n c e   f o r   a   f i l e   r e f e r e n c e . 
 @ d e s c r i p t i o n 
 I f   a   p a r a m e t e r   i s   t e x t   a n d     d o e s   n o t   s t a r t s   w i t h   " / " ,   a   p a r a m e t e r   i s   H F S   p a t h .   A n d   H F S   p a t h   i s   u s e d   f o r   i n t e r n a l   p r o c e s s i n g s .   O t h e r w i s e ,   a   P O S I X   p a t h   i s   u s e r d   f o r   i n t e r n a l   p r o c e s s i n g s . 
 
 I f   a   p a t h   e n d i n g   w i t h   a   p a t h   d e l i m i t e r   ( & q u o t ; / & q u o t ;   o r   & q u o t ; : & q u o t ; )   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   i t e m   i s   c o n s i d e r e d   a s   a   f o l d e r   i . e .   ( ( < i s _ f o l d e r > ) )   w i l l   r e t u r n   t r u e . 
 @ p a r a m   a _ p a t h   ( a l i a s ,   f u r l ,   P O S I X   p a t h   o r   H F S   p a t h )   
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o 
� ��� i   O R��� I      ������� 0 	make_with  � ���� o      ���� 
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
   � �  Z ! @ a b s t r u c t 
 M a k e   a   P a t h I n f o   i n s t a n c e   f o r   a   f i l e   r e f e r e n c e . 
 @ d e s c r i p t i o n 
 I f   a   H F S   p a t h   e n d i n g   w i t h   " : "   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   i t e m   i s   c o n s i d e r e d   a s   a   f o l d e r   i . e .   ( ( < i s _ f o l d e r > ) )   w i l l   r e t u r n   t r u e . 
 @ p a r a m   a _ p a t h   ( a l i a s ,   f u r l ,   t e x t   o f   P O S I X   p a t h )   
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o 
�  i   S V I      ������ 0 make_with_hfs   �� o      ���� 
0 a_path  ��  ��   L      I     ������ 0 make_with_pathtrans   	
	 o    ���� 
0 a_path  
 �� o    ���� &0 hfspathtranslator HFSPathTranslator��  ��    l     ��������  ��  ��    l      ����  RL!@abstruct
Make a PathInfo instance for a file reference. A synonym of ((<make_with>))
@description
If a POSIX path ending with "/" is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.
@param a_path (alias, furl, text of POSIX path) 
@result script object : A new instance of PathInfo
    �� ! @ a b s t r u c t 
 M a k e   a   P a t h I n f o   i n s t a n c e   f o r   a   f i l e   r e f e r e n c e .   A   s y n o n y m   o f   ( ( < m a k e _ w i t h > ) ) 
 @ d e s c r i p t i o n 
 I f   a   P O S I X   p a t h   e n d i n g   w i t h   " / "   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   i t e m   i s   c o n s i d e r e d   a s   a   f o l d e r   i . e .   ( ( < i s _ f o l d e r > ) )   w i l l   r e t u r n   t r u e . 
 @ p a r a m   a _ p a t h   ( a l i a s ,   f u r l ,   t e x t   o f   P O S I X   p a t h )   
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o 
  i   W Z I      ������ 0 make_with_posix   �� o      ���� 
0 a_path  ��  ��   L      I     ������ 0 make_with_pathtrans    o    ���� 
0 a_path   �� o    ���� *0 posixpathtranslator POSIXPathTranslator��  ��    l     ��������  ��  ��    !  i   [ ^"#" I      ��$���� 0 make_with_pathtrans  $ %&% o      ���� 
0 a_path  & '��' o      ���� 0 	pathtrans  ��  ��  # k    [(( )*) l     ��+,��  + &   log "start make_with_pathtrans"   , �-- @   l o g   " s t a r t   m a k e _ w i t h _ p a t h t r a n s "* ./. r     010 n     232 m    ��
�� 
pcls3 o     ���� 
0 a_path  1 o      ���� 0 a_class  / 454 r    	676 m    ��
�� boovfals7 o      ���� 0 is_text  5 898 Z   
 {:;��<: E  
 =>= J   
 ?? @A@ m   
 ��
�� 
utxtA BCB m    ��
�� 
TEXTC D�D m    �~
�~ 
ctxt�  > o    �}�} 0 a_class  ; r    EFE m    �|
�| boovtrueF o      �{�{ 0 is_text  ��  < Z    {GHIJG =   KLK o    �z�z 0 a_class  L m    �y
�y 
alisH r     (MNM n    &OPO I   ! &�xQ�w�x 0 to_text  Q R�vR o   ! "�u�u 
0 a_path  �v  �w  P o     !�t�t 0 	pathtrans  N o      �s�s 
0 a_path  I STS E  + 1UVU J   + /WW XYX m   + ,�r
�r 
fss Y Z�qZ m   , -�p
�p 
furl�q  V o   / 0�o�o 0 a_class  T [�n[ Q   4 U\]^\ r   7 A_`_ n  7 ?aba I   8 ?�mc�l�m 0 to_text  c d�kd c   8 ;efe o   8 9�j�j 
0 a_path  f m   9 :�i
�i 
alis�k  �l  b o   7 8�h�h 0 	pathtrans  ` o      �g�g 
0 a_path  ] R      �f�e�d
�f .ascrerr ****      � ****�e  �d  ^ k   I Ugg hih r   I Qjkj n  I Olml I   J O�cn�b�c 0 to_text  n o�ao o   J K�`�` 
0 a_path  �a  �b  m o   I J�_�_ 0 	pathtrans  k o      �^�^ 
0 a_path  i p�]p r   R Uqrq m   R S�\
�\ boovtruer o      �[�[ 0 is_text  �]  �n  J k   X {ss tut Q   X rvwxv r   [ `yzy c   [ ^{|{ o   [ \�Z�Z 
0 a_path  | m   \ ]�Y
�Y 
alisz o      �X�X 
0 a_path  w R      �W�V�U
�W .ascrerr ****      � ****�V  �U  x R   h r�T}~
�T .ascrerr ****      � ****} b   l q� l  l o��S�R� c   l o��� o   l m�Q�Q 0 a_class  � m   m n�P
�P 
utxt�S  �R  � m   o p�� ��� x   i s   u n s u p p o r t e d   d a t a   t y p e .   P a t h I n f o   c a n ' t   c o n v e r t   t o   a   p a t h .~ �O��N
�O 
errn� m   j k�M�M��N  u ��L� r   s {��� n  s y��� I   t y�K��J�K 0 to_text  � ��I� o   t u�H�H 
0 a_path  �I  �J  � o   s t�G�G 0 	pathtrans  � o      �F�F 
0 a_path  �L  9 ��� r   | ���� n  | ���� I   } ��E��D�E 0 	decompose  � ��C� o   } ~�B�B 
0 a_path  �C  �D  � o   | }�A�A 0 	pathtrans  � o      �@�@ 0 path_elements  � ��� r   � ���� n  � ���� I   � ��?��>�? 0 resolve_disk  � ��=� o   � ��<�< 0 path_elements  �=  �>  � o   � ��;�; 0 	pathtrans  � o      �:�: 
0 a_disk  � ��� Z   � ����9�8� H   � ��� o   � ��7�7 0 is_text  � r   � ���� n  � ���� I   � ��6��5�6 0 to_alias  � ��4� o   � ��3�3 
0 a_disk  �4  �5  � o   � ��2�2 0 	pathtrans  � o      �1�1 
0 a_disk  �9  �8  � ��� r   � ���� n  � ���� I   � ��0��/�0 0 item_at  � ��.� m   � ��-�-���.  �/  � o   � ��,�, 0 path_elements  � o      �+�+ 
0 a_name  � ��� Z   �0���*�� =  � ���� o   � ��)�) 
0 a_name  � m   � ��� ���  � k   � ��� ��� r   � ���� m   � ��(
�( boovtrue� o      �'�' 0 folder_flag  � ��� r   � ���� n  � ���� I   � ��&��%�& 0 item_at  � ��$� m   � ��#�#���$  �%  � o   � ��"�" 0 path_elements  � o      �!�! 
0 a_name  � �� � Z   � ������ =  � ���� n  � ���� 1   � ��
� 
leng� o   � ��� 0 path_elements  � m   � ��� � l  � ����� O   � ���� r   � ���� 1   � ��
� 
desk� o      �� 0 a_folder  � m   � ����                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �   if a_path is disk   � ��� $   i f   a _ p a t h   i s   d i s k�  � l  � ����� k   � ��� ��� r   � ���� n  � ���� I   � ����� 0 compose  � ��� m   � ��� � ��� m   � ������ ��� m   � ��
� boovtrue�  �  � o   � ��� 0 path_elements  � o      �� 0 a_folder  � ��� Z   � ������ H   � ��� o   � ��� 0 is_text  � r   � ���� n  � ���� I   � ����� 0 to_alias  � ��� o   � ��
�
 0 a_folder  �  �  � o   � ��	�	 0 	pathtrans  � o      �� 0 a_folder  �  �  �  �   if a_path is folder   � ��� (   i f   a _ p a t h   i s   f o l d e r�   �*  � k   �0�� ��� r   � ���� m   � ��
� boovfals� o      �� 0 folder_flag  � ��� Z   0����� ?   ��� n  ��� 1  �
� 
leng� o   �� 0 path_elements  � m  �� � k  
(    r  
 n 
 I  � ���  0 compose   	 m  ���� 	 

 m  ������ �� m  ��
�� boovtrue��  ��   o  
���� 0 path_elements   o      ���� 0 a_folder   �� Z  (���� H   o  ���� 0 is_text   r  $ n " I  "������ 0 to_alias   �� o  ���� 0 a_folder  ��  ��   o  ���� 0 	pathtrans   o      ���� 0 a_folder  ��  ��  ��  �  � r  +0 m  +.��
�� 
msng o      ���� 0 a_folder  �  �  r  1J I      ������ 0 
split_name   �� o  23���� 
0 a_name  ��  ��   J        !  o      ���� 0 
a_basename  ! "��" o      ���� 0 a_suffix  ��   #��# L  K[$$ I  KZ��%���� 0 make_with_vars  % &'& o  LM���� 0 	pathtrans  ' ()( o  MN���� 
0 a_disk  ) *+* o  NO���� 0 a_folder  + ,-, o  OP���� 
0 a_name  - ./. o  PQ���� 0 
a_basename  / 010 o  QR���� 0 a_suffix  1 232 o  RS���� 0 folder_flag  3 4��4 o  ST���� 
0 a_path  ��  ��  ��  ! 565 l     ��������  ��  ��  6 787 i   _ b9:9 I      ��;���� 0 make_with_opts  ; <=< o      ���� 
0 a_path  = >��> K      ?? ��@���� 0 prefering_posix  @ o      ���� 
0 a_bool  ��  ��  ��  : k     AA BCB Z     DE��FD o     ���� 
0 a_bool  E r    GHG o    	���� *0 posixpathtranslator POSIXPathTranslatorH o      ���� 0 	pathtrans  ��  F r    IJI o    ���� &0 hfspathtranslator HFSPathTranslatorJ o      ���� 0 	pathtrans  C K��K L    LL I    ��M���� 0 make_with_pathtrans  M NON o    ���� 
0 a_path  O P��P o    ���� 0 	pathtrans  ��  ��  ��  8 QRQ l     ��������  ��  ��  R STS i   c fUVU I      ��W���� 0 make_with_vars  W XYX o      ���� 0 	pathtrans  Y Z[Z o      ���� 
0 a_disk  [ \]\ o      ���� 0 a_folder  ] ^_^ o      ���� 
0 a_name  _ `a` o      ���� 0 
a_basename  a bcb o      ���� 0 a_suffix  c ded o      ���� 0 folder_flag  e f��f o      ���� 
0 a_path  ��  ��  V k     
gg hih h     ��j�� 0 pathinfo PathInfoj k      kk lml j     ��n
�� 
paren o     ���� 0 	pathtrans  m opo j   	 ��q�� 	0 _disk  q o   	 ���� 
0 a_disk  p rsr j    ��t�� 0 _folder  t o    ���� 0 a_folder  s uvu j    ��w�� 	0 _name  w o    ���� 
0 a_name  v xyx j    $��z�� 0 	_basename  z o    #���� 0 
a_basename  y {|{ j   % +��}�� 0 _path_extension  } o   % *���� 0 a_suffix  | ~~ j   , 2����� 0 
_is_folder  � o   , 1���� 0 folder_flag   ���� j   3 9����� 0 	_item_ref  � o   3 8���� 
0 a_path  ��  i ���� L    
�� o    	���� 0 pathinfo PathInfo��  T ��� l     ��������  ��  ��  � ��� l      ������  � &  !@group Obtain path information    � ��� @ ! @ g r o u p   O b t a i n   p a t h   i n f o r m a t i o n  � ��� l     ��������  ��  ��  � ��� l      ������  � H B!@abstruct 
Obtain a name of the file or the folder.
@result text
   � ��� � ! @ a b s t r u c t   
 O b t a i n   a   n a m e   o f   t h e   f i l e   o r   t h e   f o l d e r . 
 @ r e s u l t   t e x t 
� ��� i   g j��� I      �������� 0 	item_name  ��  ��  � L     �� n    ��� o    ���� 	0 _name  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � E ?!@abstruct 
Obtain a name without path extension.
@result text
   � ��� ~ ! @ a b s t r u c t   
 O b t a i n   a   n a m e   w i t h o u t   p a t h   e x t e n s i o n . 
 @ r e s u l t   t e x t 
� ��� i   k n��� I      �������� 0 basename  ��  ��  � L     �� n    ��� o    ���� 0 	_basename  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct 
Obtain a path extension of the file name. The result does not starts with ".".
@description
<span class="className">missing value</span> will be returned, if the target item does not have a path extension.
@result text
   � ���� ! @ a b s t r u c t   
 O b t a i n   a   p a t h   e x t e n s i o n   o f   t h e   f i l e   n a m e .   T h e   r e s u l t   d o e s   n o t   s t a r t s   w i t h   " . " . 
 @ d e s c r i p t i o n 
 < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   w i l l   b e   r e t u r n e d ,   i f   t h e   t a r g e t   i t e m   d o e s   n o t   h a v e   a   p a t h   e x t e n s i o n . 
 @ r e s u l t   t e x t 
� ��� i   o r��� I      �������� 0 path_extension  ��  ��  � L     �� n    ��� o    ���� 0 _path_extension  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � ^ X!@abstruct 
Obtain the volume name of the item referenced by the instance.
@result text
   � ��� � ! @ a b s t r u c t   
 O b t a i n   t h e   v o l u m e   n a m e   o f   t h e   i t e m   r e f e r e n c e d   b y   t h e   i n s t a n c e . 
 @ r e s u l t   t e x t 
� ��� i   s v��� I      ������� 0 volume_name  ��  �  � k     M�� ��� Z     ���~�}� >    ��� n    ��� o    �|�| 	0 _disk  �  f     � m    �� ���  /� r    ��� n   ��� I    �{�z�y�{ 0 	item_name  �z  �y  � I    �x��w�x 0 	make_with  � ��v� n  	 ��� o   
 �u�u 	0 _disk  �  f   	 
�v  �w  � o      �t�t 0 a_result  �~  �}  � ��� l   �s���s  � : 4 if my _disk is an alias, item_name() will return ""   � ��� h   i f   m y   _ d i s k   i s   a n   a l i a s ,   i t e m _ n a m e ( )   w i l l   r e t u r n   " "� ��� Z    '���r�q� >   ��� o    �p�p 0 a_result  � m    �� ���  � L   ! #�� o   ! "�o�o 0 a_result  �r  �q  � ��� l  ( (�n�m�l�n  �m  �l  � ��� r   ( /��� I   ( -�k�j�i�k 0 hfs_path  �j  �i  � o      �h�h 
0 a_path  � ��� r   0 5��� n  0 3��� 1   1 3�g
�g 
txdl� 1   0 1�f
�f 
ascr� o      �e�e 0 tid  � ��� r   6 =��� J   6 9�� ��d� m   6 7�� ���  :�d  � n     ��� 1   : <�c
�c 
txdl� 1   9 :�b
�b 
ascr� ��� r   > D��� n   > B��� 4   ? B�a�
�a 
citm� m   @ A�`�` � o   > ?�_�_ 
0 a_path  � o      �^�^ 0 a_result  � � � r   E J o   E F�]�] 0 tid   n      1   G I�\
�\ 
txdl 1   F G�[
�[ 
ascr  �Z L   K M o   K L�Y�Y 0 a_result  �Z  �  l     �X�W�V�X  �W  �V   	
	 l      �U�U   j d!@abstruct 
Obtain a file reference to the folder containing the target.
@result an alias or a path
    � � ! @ a b s t r u c t   
 O b t a i n   a   f i l e   r e f e r e n c e   t o   t h e   f o l d e r   c o n t a i n i n g   t h e   t a r g e t . 
 @ r e s u l t   a n   a l i a s   o r   a   p a t h 

  i   w z I      �T�S�R�T 0 
folder_ref  �S  �R   L      n     o    �Q�Q 0 _folder    f       l     �P�O�N�P  �O  �N    l      �M�M   � �!@abstruct 
Whether the target is a folder or not.
@description
If given path ends with a path delimiter, true will be returned wtihout checking file system. Therefor a wrong result may be returned.
@result boolean
    �� ! @ a b s t r u c t   
 W h e t h e r   t h e   t a r g e t   i s   a   f o l d e r   o r   n o t . 
 @ d e s c r i p t i o n 
 I f   g i v e n   p a t h   e n d s   w i t h   a   p a t h   d e l i m i t e r ,   t r u e   w i l l   b e   r e t u r n e d   w t i h o u t   c h e c k i n g   f i l e   s y s t e m .   T h e r e f o r   a   w r o n g   r e s u l t   m a y   b e   r e t u r n e d . 
 @ r e s u l t   b o o l e a n 
  i   { ~ I      �L�K�J�L 0 	is_folder  �K  �J   L        n    !"! o    �I�I 0 
_is_folder  "  f      #$# l     �H�G�F�H  �G  �F  $ %&% l      �E'(�E  ' m g!@abstruct 
Obtain an internal file reference which the target contains.
@result alias or text of path
   ( �)) � ! @ a b s t r u c t   
 O b t a i n   a n   i n t e r n a l   f i l e   r e f e r e n c e   w h i c h   t h e   t a r g e t   c o n t a i n s . 
 @ r e s u l t   a l i a s   o r   t e x t   o f   p a t h 
& *+* i    �,-, I      �D�C�B�D 0 item_ref  �C  �B  - L     .. n    /0/ o    �A�A 0 	_item_ref  0  f     + 121 l     �@�?�>�@  �?  �>  2 343 l      �=56�=  5 � �!@abstruct 
Whether an item exits in the file sysem or not.
@description
If the target exsits, the internal file reference is converted to an alias.
@result boolean
   6 �77J ! @ a b s t r u c t   
 W h e t h e r   a n   i t e m   e x i t s   i n   t h e   f i l e   s y s e m   o r   n o t . 
 @ d e s c r i p t i o n 
 I f   t h e   t a r g e t   e x s i t s ,   t h e   i n t e r n a l   f i l e   r e f e r e n c e   i s   c o n v e r t e d   t o   a n   a l i a s . 
 @ r e s u l t   b o o l e a n 
4 898 i   � �:;: I      �<�;�:�< 0 item_exists  �;  �:  ; k     5<< =>= Q     2?@�9? k    )AA BCB r    DED I    �8F�7�8 0 to_alias  F G�6G I    �5H�4�5 0 to_text  H I�3I n   JKJ o    �2�2 0 	_item_ref  K  f    �3  �4  �6  �7  E n     LML o    �1�1 0 	_item_ref  M  f    C NON r    &PQP I    "�0R�/�0 0 to_alias  R S�.S I    �-T�,�- 0 to_text  T U�+U n   VWV o    �*�* 0 _folder  W  f    �+  �,  �.  �/  Q n     XYX o   # %�)�) 0 _folder  Y  f   " #O Z�(Z L   ' )[[ m   ' (�'
�' boovtrue�(  @ R      �&�%�$
�& .ascrerr ****      � ****�%  �$  �9  > \�#\ L   3 5]] m   3 4�"
�" boovfals�#  9 ^_^ l     �!� ��!  �   �  _ `a` l      �bc�  b � �!@abstruct 
Whether an item exits in the file sysem or not.
@description
The internal file reference will not be changed unlike ((<item_exists>)). 
@result boolean
   c �ddH ! @ a b s t r u c t   
 W h e t h e r   a n   i t e m   e x i t s   i n   t h e   f i l e   s y s e m   o r   n o t . 
 @ d e s c r i p t i o n 
 T h e   i n t e r n a l   f i l e   r e f e r e n c e   w i l l   n o t   b e   c h a n g e d   u n l i k e   ( ( < i t e m _ e x i s t s > ) ) .   
 @ r e s u l t   b o o l e a n 
a efe i   � �ghg I      ���� 0 item_exists_without_update  �  �  h k     ii jkj Q     lm�l k    nn opo I    �q�� 0 to_alias  q r�r I    �s�� 0 to_text  s t�t n   uvu o    �� 0 	_item_ref  v  f    �  �  �  �  p w�w L    xx m    �
� boovtrue�  m R      ���
� .ascrerr ****      � ****�  �  �  k y�y L    zz m    �
� boovfals�  f {|{ l     ��
�	�  �
  �	  | }~} l      ���   n h!@abstruct 
If ((<child>)) and ((<change_folder>)) prefer posix path, true is returned.
@result boolean
   � ��� � ! @ a b s t r u c t   
 I f   ( ( < c h i l d > ) )   a n d   ( ( < c h a n g e _ f o l d e r > ) )   p r e f e r   p o s i x   p a t h ,   t r u e   i s   r e t u r n e d . 
 @ r e s u l t   b o o l e a n 
~ ��� i   � ���� I      ���� 0 is_posix  �  �  � L     �� =    ��� n    ��� o    �� 0 
_delimiter  �  f     � m    �� ���  /� ��� l     ����  �  �  � ��� l      � ���   � ( "!@group Converting reference form    � ��� D ! @ g r o u p   C o n v e r t i n g   r e f e r e n c e   f o r m  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct Obtain a file reference as alias.
@description
If failed to coerce to an alias, an error will raise.

Internal file reference is converted to an alias.
@result alias
   � ���b ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   a l i a s . 
 @ d e s c r i p t i o n 
 I f   f a i l e d   t o   c o e r c e   t o   a n   a l i a s ,   a n   e r r o r   w i l l   r a i s e . 
 
 I n t e r n a l   f i l e   r e f e r e n c e   i s   c o n v e r t e d   t o   a n   a l i a s . 
 @ r e s u l t   a l i a s 
� ��� i   � ���� I      �������� 0 as_alias  ��  ��  � k     7�� ��� Z     1������� >    ��� n     ��� m    ��
�� 
pcls� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
alis� k   
 -�� ��� r   
 ��� I   
 ������� 0 to_alias  � ���� I    ������� 0 to_text  � ���� n   ��� o    ���� 0 	_item_ref  �  f    ��  ��  ��  ��  � n     ��� o    ���� 0 	_item_ref  �  f    � ���� r    -��� I    )������� 0 to_alias  � ���� I    %������� 0 to_text  � ���� n   !��� o    !���� 0 _folder  �  f    ��  ��  ��  ��  � n     ��� o   * ,���� 0 _folder  �  f   ) *��  ��  ��  � ���� L   2 7�� n  2 6��� o   3 5���� 0 	_item_ref  �  f   2 3��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct Obtain a file reference as alias.
@description
If failed to coerce to an alias, an error will raise.

Internal file reference is not changed.
@result alias
   � ���N ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   a l i a s . 
 @ d e s c r i p t i o n 
 I f   f a i l e d   t o   c o e r c e   t o   a n   a l i a s ,   a n   e r r o r   w i l l   r a i s e . 
 
 I n t e r n a l   f i l e   r e f e r e n c e   i s   n o t   c h a n g e d . 
 @ r e s u l t   a l i a s 
� ��� i   � ���� I      �������� 0 as_alias_without_update  ��  ��  � k     "�� ��� Z     ������� >    ��� n     ��� m    ��
�� 
pcls� n    ��� o    ���� 0 	_item_ref  �  f     � m    ��
�� 
alis� L   
 �� I   
 ������� 0 to_alias  � ���� I    ������� 0 to_text  � ���� n   ��� o    ���� 0 	_item_ref  �  f    ��  ��  ��  ��  ��  ��  � ���� L    "�� n   !��� o     ���� 0 	_item_ref  �  f    ��  � ��� l     ��������  ��  ��  � ��� l      ������  � J D!@abstruct Obtain a file reference as NSURL.
@result NSURL instance
   � ��� � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   N S U R L . 
 @ r e s u l t   N S U R L   i n s t a n c e 
� ��� i   � ���� I      �������� 0 as_nsurl as_NSURL��  ��  � L     �� n    ��� I    ������� $0 fileurlwithpath_ fileURLWithPath_� ���� I    
�������� 0 
posix_path  ��  ��  ��  ��  � o     ���� 0 nsurl NSURL� ��� l     ��������  ��  ��  � ��� l      ������  � G A!@abstruct Obtain a file reference as File URL.
@result File URL
   � ��� � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   F i l e   U R L . 
 @ r e s u l t   F i l e   U R L 
� ��� i   � �   I      �������� 0 as_furl  ��  ��   L      c      n     o    ���� 0 	_item_ref    f      m    ��
�� 
furl�  l     ��������  ��  ��   	
	 l      ����   J D!@abstruct Obtain a file reference as POSIX path form.
@result text
    � � ! @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   P O S I X   p a t h   f o r m . 
 @ r e s u l t   t e x t 

  i   � � I      �������� 0 
posix_path  ��  ��   L      n     n    1    ��
�� 
psxp o    ���� 0 	_item_ref    f       l     ��������  ��  ��    l      ����   M G!@abstruct Obtain POSIX path which does not end with "/".
@result text
    � � ! @ a b s t r u c t   O b t a i n   P O S I X   p a t h   w h i c h   d o e s   n o t   e n d   w i t h   " / " . 
 @ r e s u l t   t e x t 
  i   � � !  I      �������� 0 normalized_posix_path  ��  ��  ! k     """ #$# r     %&% I     �������� 0 
posix_path  ��  ��  & o      ���� 
0 a_path  $ '(' Z    )*����) D    +,+ o    	���� 
0 a_path  , m   	 
-- �..  /* r    /0/ n    121 7   ��34
�� 
ctxt3 m    ���� 4 m    ������2 o    ���� 
0 a_path  0 o      ���� 
0 a_path  ��  ��  ( 5��5 L     "66 o     !���� 
0 a_path  ��   787 l     ��������  ��  ��  8 9:9 l      ��;<��  ; [ U!@syntax hfs_path()
@abstruct Obtain a file reference as HFS path form.
@result text
   < �== � ! @ s y n t a x   h f s _ p a t h ( ) 
 @ a b s t r u c t   O b t a i n   a   f i l e   r e f e r e n c e   a s   H F S   p a t h   f o r m . 
 @ r e s u l t   t e x t 
: >?> l     ��������  ��  ��  ? @A@ l      ��BC��  B � �!@syntax as_text()
@abstruct Obtain a path text.
@result text of HFS path or POSX path. The path form follows the path form passed to ((<make_with>)).
   C �DD. ! @ s y n t a x   a s _ t e x t ( ) 
 @ a b s t r u c t   O b t a i n   a   p a t h   t e x t . 
 @ r e s u l t   t e x t   o f   H F S   p a t h   o r   P O S X   p a t h .   T h e   p a t h   f o r m   f o l l o w s   t h e   p a t h   f o r m   p a s s e d   t o   ( ( < m a k e _ w i t h > ) ) . 
A EFE l     ��������  ��  ��  F GHG l     ��������  ��  ��  H IJI l      ��KL��  K 6 0!@group Making a new instance from the instance    L �MM ` ! @ g r o u p   M a k i n g   a   n e w   i n s t a n c e   f r o m   t h e   i n s t a n c e  J NON l     ��������  ��  ��  O PQP l      ��RS��  R  y!@abstruct 
Obtain an instance of PathInfo referencing the folder containing the target.
@result an instance of PathInfo
   S �TT � ! @ a b s t r u c t   
 O b t a i n   a n   i n s t a n c e   o f   P a t h I n f o   r e f e r e n c i n g   t h e   f o l d e r   c o n t a i n i n g   t h e   t a r g e t . 
 @ r e s u l t   a n   i n s t a n c e   o f   P a t h I n f o 
Q UVU i   � �WXW I      �������� 0 parent_folder  ��  ��  X L     YY I     ��Z��� 0 make_with_opts  Z [\[ I    �~�}�|�~ 0 
folder_ref  �}  �|  \ ]�{] K    ^^ �z_�y�z 0 prefering_posix  _ I    �x�w�v�x 0 is_posix  �w  �v  �y  �{  �  V `a` l     �u�t�s�u  �t  �s  a bcb l      �rde�r  d � �!@abstruct
Make a new PathInfo changing the item name.
@param a_name (text) : An item name
@result script object : A new instance of PathInfo
   e �ff ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   i t e m   n a m e . 
 @ p a r a m   a _ n a m e   ( t e x t )   :   A n   i t e m   n a m e 
 @ r e s u l t   s c r i p t   o b j e c t   :   A   n e w   i n s t a n c e   o f   P a t h I n f o 
c ghg i   � �iji I      �qk�p�q 0 change_name  k l�ol o      �n�n 
0 a_name  �o  �p  j k     =mm non r     pqp I      �mr�l�m 0 
split_name  r s�ks o    �j�j 
0 a_name  �k  �l  q J      tt uvu o      �i�i 0 
a_basename  v w�hw o      �g�g 0 a_suffix  �h  o x�fx O    =yzy k    <{{ |}| r    #~~ o    �e�e 
0 a_name   n     ��� o     "�d�d 	0 _name  �  g     } ��� r   $ )��� o   $ %�c�c 0 
a_basename  � n     ��� o   & (�b�b 0 	_basename  �  g   % &� ��� r   * /��� o   * +�a�a 0 a_suffix  � n     ��� o   , .�`�` 0 _path_extension  �  g   + ,� ��� r   0 9��� I   0 5�_�^�]�_ 0 
build_path  �^  �]  � n     ��� o   6 8�\�\ 0 	_item_ref  �  g   5 6� ��[� L   : <��  g   : ;�[  z I    �Z�Y�X�Z 	0 clone  �Y  �X  �f  h ��� l     �W�V�U�W  �V  �U  � ��� l      �T���T  �NH!@abstruct
Make a new PathInfo changing the path extension.
@description
If <span class="className">missing value</span> is passed as a parameter, the path extension of the receiver will be deleted.
@param ext (text) : A path extension. It should not start with &quot;.&quot;.
@result script object : a new instance of PathInfo
   � ���� ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   c h a n g i n g   t h e   p a t h   e x t e n s i o n . 
 @ d e s c r i p t i o n 
 I f   < s p a n   c l a s s = " c l a s s N a m e " > m i s s i n g   v a l u e < / s p a n >   i s   p a s s e d   a s   a   p a r a m e t e r ,   t h e   p a t h   e x t e n s i o n   o f   t h e   r e c e i v e r   w i l l   b e   d e l e t e d . 
 @ p a r a m   e x t   ( t e x t )   :   A   p a t h   e x t e n s i o n .   I t   s h o u l d   n o t   s t a r t   w i t h   & q u o t ; . & q u o t ; . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   P a t h I n f o 
� ��� i   � ���� I      �S��R�S 0 change_path_extension  � ��Q� o      �P�P 0 ext  �Q  �R  � O     7��� k    6�� ��� r    ��� o    	�O�O 0 ext  � n     ��� o   
 �N�N 0 _path_extension  �  g   	 
� ��� Z    )���M�� =   ��� o    �L�L 0 ext  � m    �K
�K 
msng� r    ��� n   ��� o    �J�J 0 	_basename  �  g    � n     ��� o    �I�I 	0 _name  �  g    �M  � r    )��� b    %��� b    #��� n   !��� o    !�H�H 0 	_basename  �  g    � m   ! "�� ���  .� o   # $�G�G 0 ext  � n     ��� o   & (�F�F 	0 _name  �  g   % &� ��� r   * 3��� I   * /�E�D�C�E 0 
build_path  �D  �C  � n     ��� o   0 2�B�B 0 	_item_ref  �  g   / 0� ��A� L   4 6��  g   4 5�A  � I     �@�?�>�@ 	0 clone  �?  �>  � ��� l     �=�<�;�=  �<  �;  � ��� l      �:���:  ���!@abstruct
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
� ��� i   � ���� I      �9��8�9 0 change_folder  � ��7� o      �6�6 0 a_folder  �7  �8  � k     H�� ��� Z     &���5�4� F     ��� l    	��3�2� E    	��� J     �� ��� m     �1
�1 
ctxt� ��� m    �0
�0 
utxt� ��/� m    �.
�. 
TEXT�/  � n    ��� m    �-
�- 
pcls� o    �,�, 0 a_folder  �3  �2  � l   ��+�*� H    �� D    ��� o    �)�) 0 a_folder  � I    �(�'�&�( 0 	delimiter  �'  �&  �+  �*  � r    "��� b     ��� o    �%�% 0 a_folder  � I    �$�#�"�$ 0 	delimiter  �#  �"  � o      �!�! 0 a_folder  �5  �4  � �� � O   ' H��� k   / G�� ��� r   / 4��� o   / 0�� 0 a_folder  � n     ��� o   1 3�� 0 _folder  �  g   0 1� ��� r   5 :   m   5 6�
� 
msng n      o   7 9�� 	0 _disk    g   6 7�  r   ; D I   ; @���� 0 
build_path  �  �   n     	 o   A C�� 0 	_item_ref  	  g   @ A 
�
 L   E G  g   E F�  � I   ' ,���� 	0 clone  �  �  �   �  l     ����  �  �    l      ��  ��!@abstruct
Make a new PathInfo appending a sub path.
@description
The path form for a parameter must keep consistency with a path passed to the constructor method. If the target was constucted by ((<make_with_posix>)). The path form must be POSIX. If the target was constructed by ((<make_with_hfs>)), the path form must be HFS.
@param subpath (text)  : A relative path from the target.
@result script object : a new instance of PathInfo
    �l ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   a p p e n d i n g   a   s u b   p a t h . 
 @ d e s c r i p t i o n 
 T h e   p a t h   f o r m   f o r   a   p a r a m e t e r   m u s t   k e e p   c o n s i s t e n c y   w i t h   a   p a t h   p a s s e d   t o   t h e   c o n s t r u c t o r   m e t h o d .   I f   t h e   t a r g e t   w a s   c o n s t u c t e d   b y   ( ( < m a k e _ w i t h _ p o s i x > ) ) .   T h e   p a t h   f o r m   m u s t   b e   P O S I X .   I f   t h e   t a r g e t   w a s   c o n s t r u c t e d   b y   ( ( < m a k e _ w i t h _ h f s > ) ) ,   t h e   p a t h   f o r m   m u s t   b e   H F S . 
 @ p a r a m   s u b p a t h   ( t e x t )     :   A   r e l a t i v e   p a t h   f r o m   t h e   t a r g e t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   i n s t a n c e   o f   P a t h I n f o 
  i   � � I      ��� 	0 child   � o      �� 0 subpath  �  �   k     2  r      I     ��
�	� 0 as_text  �
  �	   o      �� 
0 a_path    Z      !��  H    "" D    #$# o    	�� 
0 a_path  $ I   	 ���� 0 	delimiter  �  �  ! r    %&% b    '(' o    �� 
0 a_path  ( I    � �����  0 	delimiter  ��  ��  & o      ���� 
0 a_path  �  �   )��) L   ! 2** I   ! 1��+���� 0 make_with_opts  + ,-, b   " %./. o   " #���� 
0 a_path  / o   # $���� 0 subpath  - 0��0 K   % -11 ��2���� 0 prefering_posix  2 I   & +�������� 0 is_posix  ��  ��  ��  ��  ��  ��   343 l     ��������  ��  ��  4 565 l      ��78��  7 � z!@abstruct
Make a new PathInfo which refering the same file to the target.
@result script object : a instance of PathInfo
   8 �99 � ! @ a b s t r u c t 
 M a k e   a   n e w   P a t h I n f o   w h i c h   r e f e r i n g   t h e   s a m e   f i l e   t o   t h e   t a r g e t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   i n s t a n c e   o f   P a t h I n f o 
6 :;: i   � �<=< I      �������� 	0 clone  ��  ��  = L     >> I     ��?���� 0 make_with_vars  ? @A@ 1    ��
�� 
pareA BCB n   DED o    ���� 	0 _disk  E  f    C FGF n   
HIH o    
���� 0 _folder  I  f    G JKJ n  
 LML o    ���� 	0 _name  M  f   
 K NON n   PQP o    ���� 0 	_basename  Q  f    O RSR n   TUT o    ���� 0 _path_extension  U  f    S VWV n   XYX o    ���� 0 
_is_folder  Y  f    W Z��Z n   [\[ o    ���� 0 	_item_ref  \  f    ��  ��  ; ]^] l     ��������  ��  ��  ^ _`_ l      ��ab��  a  	 private    b �cc    p r i v a t e  ` ded i   � �fgf I      �������� 0 
build_path  ��  ��  g k     @hh iji Z     kl��mk =    non n    pqp o    ���� 0 _path_extension  q  f     o m    ��
�� 
msngl r    rsr n   tut o   	 ���� 	0 _name  u  f    	s o      ���� 
0 a_name  ��  m r    vwv l   x����x b    yzy b    {|{ n   }~} o    ���� 0 	_basename  ~  f    | m     ���  .z n   ��� o    ���� 0 _path_extension  �  f    ��  ��  w o      ���� 
0 a_name  j ��� Z    0������� n    ��� o    ���� 0 
_is_folder  �  f    � r   # ,��� b   # *��� o   # $���� 
0 a_name  � I   $ )�������� 0 	delimiter  ��  ��  � o      ���� 
0 a_name  ��  ��  � ��� r   1 ;��� I   1 9������� 0 to_text  � ���� n  2 5��� o   3 5���� 0 _folder  �  f   2 3��  ��  � o      ���� 0 folder_path  � ���� L   < @�� b   < ?��� o   < =���� 0 folder_path  � o   = >���� 
0 a_name  ��  e ��� l     ��������  ��  ��  � ��� l      ������  �    methods for PathElements    � ��� 4   m e t h o d s   f o r   P a t h E l e m e n t s  � ��� i   � ���� I      ������� 0 item_at  � ���� o      ���� 0 n  ��  ��  � L     �� n    ��� n   ��� 4    ���
�� 
cobj� o    ���� 0 n  � o    ���� 0 	_contents  �  f     � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 compose  � ��� o      ���� 0 n1  � ��� o      ���� 0 n2  � ���� o      ���� 0 folder_flag  ��  ��  � k     :�� ��� r     ��� n    ��� 1    ��
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
ascr� ���� L   8 :�� o   8 9���� 0 a_result  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 make_path_elements  � ���� o      ���� 
0 a_list  ��  ��  � k     �� ��� r     ���  f     � o      ���� 0 a_parent  � ���� h    ����� 0 pathelements pathElements� k      �� ��� j     ���
�� 
pare� o     ���� 0 a_parent  � ��� j   	 ����� 0 	_contents  � o   	 ���� 
0 a_list  � ���� j    ���
�� 
leng� n       1    ��
�� 
leng o    �� 
0 a_list  ��  ��  �  l     �~�}�|�~  �}  �|    i   � � I      �{�z�{ 0 	decompose   	�y	 o      �x�x 
0 a_path  �y  �z   k     !

  r      n     1    �w
�w 
txdl 1     �v
�v 
ascr o      �u�u 0 tid    r     n   	 o    	�t�t 0 
_delimiter    f     n      1   
 �s
�s 
txdl 1   	 
�r
�r 
ascr  r     n     2    �q
�q 
citm o    �p�p 
0 a_path   o      �o�o 
0 a_list     r    !"! o    �n�n 0 tid  " n     #$# 1    �m
�m 
txdl$ 1    �l
�l 
ascr  %�k% L    !&& I     �j'�i�j 0 make_path_elements  ' (�h( o    �g�g 
0 a_list  �h  �i  �k   )*) l     �f�e�d�f  �e  �d  * +,+ i   � �-.- I      �c�b�a�c 0 	delimiter  �b  �a  . L     // n    010 o    �`�` 0 
_delimiter  1  f     , 232 l     �_�^�]�_  �^  �]  3 454 i   � �676 I      �\8�[�\ 0 set_name  8 9�Z9 o      �Y�Y 
0 a_name  �Z  �[  7 k     ::: ;<; r     =>= I      �X?�W�X 0 
split_name  ? @�V@ o    �U�U 
0 a_name  �V  �W  > J      AA BCB n     DED o    �T�T 0 	_basename  E  f    C F�SF n     GHG o    �R�R 0 _path_extension  H  f    �S  < IJI r    KLK o    �Q�Q 
0 a_name  L n     MNM o    �P�P 	0 _name  N  f    J OPO Z     7QR�O�NQ >    'STS n     %UVU m   # %�M
�M 
pclsV n    #WXW o   ! #�L�L 0 	_item_ref  X  f     !T m   % &�K
�K 
alisR r   * 3YZY I   * /�J�I�H�J 0 
build_path  �I  �H  Z n     [\[ o   0 2�G�G 0 	_item_ref  \  g   / 0�O  �N  P ]�F] L   8 :^^  f   8 9�F  5 _`_ l     �E�D�C�E  �D  �C  ` aba l      �Bcd�B  c!@group Error Numbers and Error Messages
* number : 980
	* message : Unknown data type. PathInfo can't convert to a path.
	* Raise when a parameter passed to ((<make_with>)), ((<make_with_hfs>)), ((<make_with_posix>)),((<change_folder>)) can not be treated as a file reference.
   d �ee, ! @ g r o u p   E r r o r   N u m b e r s   a n d   E r r o r   M e s s a g e s 
 *   n u m b e r   :   9 8 0 
 	 *   m e s s a g e   :   U n k n o w n   d a t a   t y p e .   P a t h I n f o   c a n ' t   c o n v e r t   t o   a   p a t h . 
 	 *   R a i s e   w h e n   a   p a r a m e t e r   p a s s e d   t o   ( ( < m a k e _ w i t h > ) ) ,   ( ( < m a k e _ w i t h _ h f s > ) ) ,   ( ( < m a k e _ w i t h _ p o s i x > ) ) , ( ( < c h a n g e _ f o l d e r > ) )   c a n   n o t   b e   t r e a t e d   a s   a   f i l e   r e f e r e n c e . 
b fgf l     �A�@�?�A  �@  �?  g hih i   � �jkj I      �>�=�<�> 0 open_helpbook  �=  �<  k Q     ,lmnl O   opo I   
 �;q�:�; 0 do  q r�9r I   �8s�7
�8 .earsffdralis        afdrs  f    �7  �9  �:  p 4    �6t
�6 
scptt m    uu �vv  O p e n H e l p B o o km R      �5wx
�5 .ascrerr ****      � ****w o      �4�4 0 msg  x �3y�2
�3 
errny o      �1�1 	0 errno  �2  n k    ,zz {|{ I   "�0�/�.
�0 .miscactvnull��� ��� null�/  �.  | }�-} I  # ,�,~�+
�, .sysodisAaleR        TEXT~ l  # (�*�) b   # (��� b   # &��� o   # $�(�( 0 msg  � o   $ %�'
�' 
ret � o   & '�&�& 	0 errno  �*  �)  �+  �-  i ��� l     �%�$�#�%  �$  �#  � ��� i   � ���� I     �"�!� 
�" .aevtoappnull  �   � ****�!  �   � k     �� ��� l     ����  �  return debug()   � ���  r e t u r n   d e b u g ( )� ��� I     ���� 0 open_helpbook  �  �  �  � ��� l     ����  �  �  � ��� i   � ���� I      ���� 	0 debug  �  �  � k     &�� ��� l     ����  � ! boot (module loader) for me   � ��� 6 b o o t   ( m o d u l e   l o a d e r )   f o r   m e� ��� l     ����  �  �  � ��� l     ����  � ~ xset a_path to "/Volumes/Macintosh HD/Users/tkurita/Dev/Projects/TeX Tools for mi/�T���v��/insert-file/sample-figure.pdf"   � ��� � s e t   a _ p a t h   t o   " / V o l u m e s / M a c i n t o s h   H D / U s e r s / t k u r i t a / D e v / P r o j e c t s / T e X   T o o l s   f o r   m i /0�0�0�0� / i n s e r t - f i l e / s a m p l e - f i g u r e . p d f "� ��� l     ����  � K Eset a_path to "Macintosh HD:Users:tkurita:BackdropUserBackground.png"   � ��� � s e t   a _ p a t h   t o   " M a c i n t o s h   H D : U s e r s : t k u r i t a : B a c k d r o p U s e r B a c k g r o u n d . p n g "� ��� l     ����  � Q Kset a_path to alias "Macintosh HD:Users:tkurita:BackdropUserBackground.png"   � ��� � s e t   a _ p a t h   t o   a l i a s   " M a c i n t o s h   H D : U s e r s : t k u r i t a : B a c k d r o p U s e r B a c k g r o u n d . p n g "� ��� r     ��� c     ��� m     �� ��� R / U s e r s / t k u r i t a / B a c k d r o p U s e r B a c k g r o u n d . p n g� m    �
� 
psxf� o      �� 
0 a_path  � ��� l   ����  � ? 9set a_path to "/Users/tkurita/BackdropUserBackground.png"   � ��� r s e t   a _ p a t h   t o   " / U s e r s / t k u r i t a / B a c k d r o p U s e r B a c k g r o u n d . p n g "� ��� L    �� n   ��� I    �
�	��
 0 volume_name  �	  �  � I    ���� 0 	make_with  � ��� o    �� 
0 a_path  �  �  � ��� r    ��� 4    ��
� 
alis� m    �� ���  M a c i n t o s h   H D� o      �� 
0 a_path  � ��� L    $�� n   #��� I    #�� ��� 0 	item_name  �   ��  � I    ������� 0 	make_with  � ���� o    ���� 
0 a_path  ��  ��  � ���� l  % %��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       3����� ����������������������������������������� ��  � 1��������������������������������������������������������������������������������������������������
�� 
pimr�� 0 nsurl NSURL
�� 
pnam�� 0 name_of  �� 0 basename_of  �� 0 path_extension_of  �� 0 	suffix_of  �� 0 
split_name  �� 0 	folder_of  �� *0 posixpathtranslator POSIXPathTranslator�� &0 hfspathtranslator HFSPathTranslator�� 0 	make_with  �� 0 make_with_hfs  �� 0 make_with_posix  �� 0 make_with_pathtrans  �� 0 make_with_opts  �� 0 make_with_vars  �� 0 	item_name  �� 0 basename  �� 0 path_extension  �� 0 volume_name  �� 0 
folder_ref  �� 0 	is_folder  �� 0 item_ref  �� 0 item_exists  �� 0 item_exists_without_update  �� 0 is_posix  �� 0 as_alias  �� 0 as_alias_without_update  �� 0 as_nsurl as_NSURL�� 0 as_furl  �� 0 
posix_path  �� 0 normalized_posix_path  �� 0 parent_folder  �� 0 change_name  �� 0 change_path_extension  �� 0 change_folder  �� 	0 child  �� 	0 clone  �� 0 
build_path  �� 0 item_at  �� 0 compose  �� 0 make_path_elements  �� 0 	decompose  �� 0 	delimiter  �� 0 set_name  �� 0 open_helpbook  
�� .aevtoappnull  �   � ****�� 	0 debug  � ����    ����
�� 
cobj 		   ��
�� 
osax��   ��
��
�� 
cobj
    �� 
�� 
frmk��  �  ����
�� misccura
�� 
pcls � 
 N S U R L� �� 8�������� 0 name_of  �� ����   ���� 0 an_item  ��   ���� 0 an_item   ������ 0 	make_with  �� 0 	item_name  �� *�k+  j+ � �� J�������� 0 basename_of  �� ����   ���� 0 an_item  ��   ���� 0 an_item   ������ 0 	make_with  �� 0 basename  �� *�k+  j+ � �� \�������� 0 path_extension_of  �� ����   ���� 0 an_item  ��   ���� 0 an_item   ������ 0 	make_with  �� 0 path_extension  �� *�el+  j+ � �� k�������� 0 	suffix_of  �� ����   ���� 0 an_item  ��   ���� 0 an_item   ���� 0 path_extension_of  �� *�k+  � �� {�������� 0 
split_name  �� ����   ���� 
0 a_name  ��   ������������ 
0 a_name  �� 0 tid  �� 0 name_elements  �� 0 a_suffix  �� 0 
a_basename   	 ����� �����������
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
msng�� G�� 5��,E�O�kv��,FO��-E�O��i/E�O�[�\[Zk\Z�2�&E�O���,FY 	�E�O�E�O��lv� � ��~�}�|� 0 	folder_of  �~ �{ �{    �z�z 0 an_item  �}   �y�y 0 an_item   �x�w�x 0 	make_with  �w 0 
folder_ref  �| *�k+  j+ � �v �  !�v *0 posixpathtranslator POSIXPathTranslator!  " �#$%&'" �u�t�s�r�q�p�u 0 
_delimiter  �t 0 to_text  �s 0 to_alias  �r 0 resolve_disk  �q 0 hfs_path  �p 0 as_text  # �o ��n�m()�l�o 0 to_text  �n �k*�k *  �j�j 
0 a_file  �m  ( �i�i 
0 a_file  ) �h
�h 
psxp�l ��,E$ �g ��f�e+,�d�g 0 to_alias  �f �c-�c -  �b�b 
0 a_file  �e  + �a�a 
0 a_file  , �`�_
�` 
psxf
�_ 
alis�d ��&�&% �^�]�\./�[�^ 0 resolve_disk  �] �Z0�Z 0  �Y�Y 0 path_elements  �\  . �X�W�V�X 0 path_elements  �W 0 n_elems  �V 
0 a_disk  / �U�T!�S�R59
�U 
leng�T 0 item_at  
�S 
bool�R 0 compose  �[ 9��,E�O�k	 �lk+ � �& �l �kmem+ E�Y �E�Y �E�O�& �QB�P�O12�N�Q 0 hfs_path  �P  �O  1  2 �M�L�K�J�M 0 	_item_ref  
�L 
psxp
�K 
psxf
�J 
utxt�N )�,�,�&�&' �IR�H�G34�F�I 0 as_text  �H  �G  3  4 �E�D�E 0 	_item_ref  
�D 
psxp�F )�,�,E� �C\  5�C &0 hfspathtranslator HFSPathTranslator5  6a789:;6 �B�A�@�?�>�=�B 0 
_delimiter  �A 0 to_text  �@ 0 to_alias  �? 0 resolve_disk  �> 0 hfs_path  �= 0 as_text  7 �<h�;�:<=�9�< 0 to_text  �; �8>�8 >  �7�7 
0 a_file  �:  < �6�6 
0 a_file  = �5
�5 
utxt�9 ��&8 �4s�3�2?@�1�4 0 to_alias  �3 �0A�0 A  �/�/ 
0 a_file  �2  ? �.�. 
0 a_file  @ �-
�- 
alis�1 ��&9 �,~�+�*BC�)�, 0 resolve_disk  �+ �(D�( D  �'�' 0 path_elements  �*  B �&�& 0 path_elements  C �%�% 0 item_at  �) �kk+  b   %: �$��#�"EF�!�$ 0 hfs_path  �#  �"  E  F � ��  0 	_item_ref  
� 
utxt�! )�,�&; ����GH�� 0 as_text  �  �  G  H ��� 0 	_item_ref  
� 
utxt� )�,�&� ����IJ�� 0 	make_with  � �K� K  �� 
0 a_path  �  I ����� 
0 a_path  � 0 a_class  � 0 hf  � 0 	pathtrans  J ������
�	����
� 
pcls
� 
ctxt
� 
utxt
� 
TEXT
�
 afdrcusr
�	 .earsffdralis        afdr
� 
psxp
� 
leng� 0 make_with_pathtrans  � s��,E�O���mv� T�� 4�j �,E�O��,l ��[�\[Zm\Zi2%E�Y �E�Ob  	E�Y �� b  	E�Y 	b  
E�Y 	b  	E�O*��l+ 
� ���LM�� 0 make_with_hfs  � �N� N  � �  
0 a_path  �  L ���� 
0 a_path  M ���� 0 make_with_pathtrans  � *�b  
l+  � ������OP���� 0 make_with_posix  �� ��Q�� Q  ���� 
0 a_path  ��  O ���� 
0 a_path  P ���� 0 make_with_pathtrans  �� *�b  	l+  � ��#����RS���� 0 make_with_pathtrans  �� ��T�� T  ������ 
0 a_path  �� 0 	pathtrans  ��  R ������������������������ 
0 a_path  �� 0 	pathtrans  �� 0 a_class  �� 0 is_text  �� 0 path_elements  �� 
0 a_disk  �� 
0 a_name  �� 0 folder_flag  �� 0 a_folder  �� 0 
a_basename  �� 0 a_suffix  S �������������������������������������������������������
�� 
pcls
�� 
utxt
�� 
TEXT
�� 
ctxt
�� 
alis�� 0 to_text  
�� 
fss 
�� 
furl��  ��  
�� 
errn����� 0 	decompose  �� 0 resolve_disk  �� 0 to_alias  �� 0 item_at  ����
�� 
leng
�� 
desk������ 0 compose  
�� 
msng�� 0 
split_name  
�� 
cobj�� �� 0 make_with_vars  ��\��,E�OfE�O���mv� eE�Y c��  ��k+ E�Y R��lv� & ���&k+ E�W X  	��k+ E�OeE�Y % 
��&E�W X  	)��l��&�%O��k+ E�O��k+ E�O��k+ E�O� ��k+ E�Y hO�ik+ E�O�a   MeE�O�a k+ E�O�a ,l  a  	*a ,E�UY  �ka em+ E�O� ��k+ E�Y hY 6fE�O�a ,k #�ka em+ E�O� ��k+ E�Y hY a E�O*�k+ E[a k/E�Z[a l/E�ZO*��������a + � ��:����UV���� 0 make_with_opts  �� ��W�� W  ��X�� 
0 a_path  X �������� 0 prefering_posix  �� 
0 a_bool  ��  ��  U �������� 
0 a_path  �� 
0 a_bool  �� 0 	pathtrans  V ���� 0 make_with_pathtrans  �� � b  	E�Y 	b  
E�O*��l+  � ��V����YZ���� 0 make_with_vars  �� ��[�� [  ������������������ 0 	pathtrans  �� 
0 a_disk  �� 0 a_folder  �� 
0 a_name  �� 0 
a_basename  �� 0 a_suffix  �� 0 folder_flag  �� 
0 a_path  ��  Y 	�������������������� 0 	pathtrans  �� 
0 a_disk  �� 0 a_folder  �� 
0 a_name  �� 0 
a_basename  �� 0 a_suffix  �� 0 folder_flag  �� 
0 a_path  �� 0 pathinfo PathInfoZ ��j\�� 0 pathinfo PathInfo\ ��]����^_��
�� .ascrinit****      � ****] k     9`` laa obb rcc udd xee {ff ~gg �����  ��  ��  ^ ����������������
�� 
pare�� 	0 _disk  �� 0 _folder  �� 	0 _name  �� 0 	_basename  �� 0 _path_extension  �� 0 
_is_folder  �� 0 	_item_ref  _ ����������������
�� 
pare�� 	0 _disk  �� 0 _folder  �� 	0 _name  �� 0 	_basename  �� 0 _path_extension  �� 0 
_is_folder  �� 0 	_item_ref  �� :b   N  Ob  �Ob  �Ob  �Ob  �Ob  �Ob  �Ob  ��� ��K S�O�� �������hi���� 0 	item_name  ��  ��  h  i ���� 	0 _name  �� )�,E� �������jk���� 0 basename  ��  ��  j  k ���� 0 	_basename  �� )�,E� �������lm���� 0 path_extension  ��  ��  l  m ���� 0 _path_extension  �� )�,E� ������no�~�� 0 volume_name  ��  �  n �}�|�{�} 0 a_result  �| 
0 a_path  �{ 0 tid  o 
�z��y�x��w�v�u��t�z 	0 _disk  �y 0 	make_with  �x 0 	item_name  �w 0 hfs_path  
�v 
ascr
�u 
txdl
�t 
citm�~ N)�,� *)�,k+ j+ E�Y hO�� �Y hO*j+ E�O��,E�O�kv��,FO��k/E�O���,FO�� �s�r�qpq�p�s 0 
folder_ref  �r  �q  p  q �o�o 0 _folder  �p )�,E� �n�m�lrs�k�n 0 	is_folder  �m  �l  r  s �j�j 0 
_is_folder  �k )�,E� �i-�h�gtu�f�i 0 item_ref  �h  �g  t  u �e�e 0 	_item_ref  �f )�,E� �d;�c�bvw�a�d 0 item_exists  �c  �b  v  w �`�_�^�]�\�[�` 0 	_item_ref  �_ 0 to_text  �^ 0 to_alias  �] 0 _folder  �\  �[  �a 6 +**)�,k+ k+ )�,FO**)�,k+ k+ )�,FOeW X  hOf� �Zh�Y�Xxy�W�Z 0 item_exists_without_update  �Y  �X  x  y �V�U�T�S�R�V 0 	_item_ref  �U 0 to_text  �T 0 to_alias  �S  �R  �W   **)�,k+ k+ OeW X  hOf� �Q��P�Oz{�N�Q 0 is_posix  �P  �O  z  { �M��M 0 
_delimiter  �N )�,� � �L��K�J|}�I�L 0 as_alias  �K  �J  |  } �H�G�F�E�D�C�H 0 	_item_ref  
�G 
pcls
�F 
alis�E 0 to_text  �D 0 to_alias  �C 0 _folder  �I 8)�,�,� (**)�,k+ k+ )�,FO**)�,k+ k+ )�,FY hO)�,E� �B��A�@~�?�B 0 as_alias_without_update  �A  �@  ~   �>�=�<�;�:�> 0 	_item_ref  
�= 
pcls
�< 
alis�; 0 to_text  �: 0 to_alias  �? #)�,�,� **)�,k+ k+ Y hO)�,E� �9��8�7���6�9 0 as_nsurl as_NSURL�8  �7  �  � �5�4�5 0 
posix_path  �4 $0 fileurlwithpath_ fileURLWithPath_�6 b  *j+  k+ � �3�2�1���0�3 0 as_furl  �2  �1  �  � �/�.�/ 0 	_item_ref  
�. 
furl�0 )�,�&� �-�,�+���*�- 0 
posix_path  �,  �+  �  � �)�(�) 0 	_item_ref  
�( 
psxp�* )�,�,E� �'!�&�%���$�' 0 normalized_posix_path  �&  �%  � �#�# 
0 a_path  � �"-�!� �" 0 
posix_path  
�! 
ctxt� ���$ #*j+  E�O�� �[�\[Zk\Z�2E�Y hO�� �X������ 0 parent_folder  �  �  �  � ����� 0 
folder_ref  � 0 prefering_posix  � 0 is_posix  � 0 make_with_opts  � **j+  �*j+ ll+ � �j������ 0 change_name  � ��� �  �� 
0 a_name  �  � ���� 
0 a_name  � 0 
a_basename  � 0 a_suffix  � �����
�	��� 0 
split_name  
� 
cobj� 	0 clone  � 	0 _name  �
 0 	_basename  �	 0 _path_extension  � 0 
build_path  � 0 	_item_ref  � >*�k+  E[�k/E�Z[�l/E�ZO*j+   �*�,FO�*�,FO�*�,FO*j+ *�,FO*U� �������� 0 change_path_extension  � ��� �  �� 0 ext  �  � � �  0 ext  � ����������������� 	0 clone  �� 0 _path_extension  
�� 
msng�� 0 	_basename  �� 	0 _name  �� 0 
build_path  �� 0 	_item_ref  � 8*j+   0�*�,FO��  *�,*�,FY *�,�%�%*�,FO*j+ *�,FO*U� ������������� 0 change_folder  �� ����� �  ���� 0 a_folder  ��  � ���� 0 a_folder  � ������������������������
�� 
ctxt
�� 
utxt
�� 
TEXT
�� 
pcls�� 0 	delimiter  
�� 
bool�� 	0 clone  �� 0 _folder  
�� 
msng�� 	0 _disk  �� 0 
build_path  �� 0 	_item_ref  �� I���mv��,	 �*j+ �& �*j+ %E�Y hO*j+  �*�,FO�*�,FO*j+ 
*�,FO*U� ������������ 	0 child  �� ����� �  ���� 0 subpath  ��  � ������ 0 subpath  �� 
0 a_path  � ������������ 0 as_text  �� 0 	delimiter  �� 0 prefering_posix  �� 0 is_posix  �� 0 make_with_opts  �� 3*j+  E�O�*j+  �*j+ %E�Y hO*��%�*j+ ll+ � ��=���������� 	0 clone  ��  ��  �  � 
��������������������
�� 
pare�� 	0 _disk  �� 0 _folder  �� 	0 _name  �� 0 	_basename  �� 0 _path_extension  �� 0 
_is_folder  �� 0 	_item_ref  �� �� 0 make_with_vars  �� **�,)�,)�,)�,)�,)�,)�,)�,�+ 	� ��g���������� 0 
build_path  ��  ��  � ������ 
0 a_name  �� 0 folder_path  � 	������������������ 0 _path_extension  
�� 
msng�� 	0 _name  �� 0 	_basename  �� 0 
_is_folder  �� 0 	delimiter  �� 0 _folder  �� 0 to_text  �� A)�,�  
)�,E�Y )�,�%)�,%E�O)�,E �*j+ %E�Y hO*)�,k+ E�O��%� ������������� 0 item_at  �� ����� �  ���� 0 n  ��  � ���� 0 n  � ������ 0 	_contents  
�� 
cobj�� 	)�,�/E� ������������� 0 compose  �� ����� �  �������� 0 n1  �� 0 n2  �� 0 folder_flag  ��  � ������������ 0 n1  �� 0 n2  �� 0 folder_flag  �� 0 tid  �� 0 a_result  � ������������
�� 
ascr
�� 
txdl�� 0 
_delimiter  �� 0 	_contents  
�� 
cobj
�� 
utxt�� ;��,E�O)�,kv��,FO)�,[�\[Z�\Z�2�&E�O� �)�,%E�Y hO���,FO�� ������������� 0 make_path_elements  �� ����� �  ���� 
0 a_list  ��  � �������� 
0 a_list  �� 0 a_parent  �� 0 pathelements pathElements� ������ 0 pathelements pathElements� �����������
�� .ascrinit****      � ****� k     �� ��� ��� �����  ��  ��  � ������
�� 
pare�� 0 	_contents  
�� 
leng� ������
�� 
pare�� 0 	_contents  
�� 
leng�� b  N  Ob   �Ob   �,E��� )E�O��K S�� ������������ 0 	decompose  �� ����� �  ���� 
0 a_path  ��  � �������� 
0 a_path  �� 0 tid  �� 
0 a_list  � ��������~
�� 
ascr
�� 
txdl�� 0 
_delimiter  
� 
citm�~ 0 make_path_elements  �� "��,E�O)�,��,FO��-E�O���,FO*�k+   �}.�|�{���z�} 0 	delimiter  �|  �{  �  � �y�y 0 
_delimiter  �z )�,E �x7�w�v���u�x 0 set_name  �w �t��t �  �s�s 
0 a_name  �v  � �r�r 
0 a_name  � 	�q�p�o�n�m�l�k�j�i�q 0 
split_name  
�p 
cobj�o 0 	_basename  �n 0 _path_extension  �m 	0 _name  �l 0 	_item_ref  
�k 
pcls
�j 
alis�i 0 
build_path  �u ;*�k+  E[�k/)�,FZ[�l/)�,FZO�)�,FO)�,�,� *j+ *�,FY hO) �hk�g�f���e�h 0 open_helpbook  �g  �f  � �d�c�d 0 msg  �c 	0 errno  � 	�bu�a�`�_��^�]�\
�b 
scpt
�a .earsffdralis        afdr�` 0 do  �_ 0 msg  � �[�Z�Y
�[ 
errn�Z 	0 errno  �Y  
�^ .miscactvnull��� ��� null
�] 
ret 
�\ .sysodisAaleR        TEXT�e - )��/ *)j k+ UW X  *j O��%�%j  �X��W�V���U
�X .aevtoappnull  �   � ****�W  �V  �  � �T�T 0 open_helpbook  �U *j+   �S��R�Q���P�S 	0 debug  �R  �Q  � �O�O 
0 a_path  � ��N�M�L�K��J
�N 
psxf�M 0 	make_with  �L 0 volume_name  
�K 
alis�J 0 	item_name  �P '��&E�O*�k+ j+ O)��/E�O*�k+ j+ OPascr  ��ޭ