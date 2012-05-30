(* Copyright (C) 2007, 2008, 2009, 2010 ,2011,2012 Tetsuro KURITA


This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/> *)

property name : "PathInfo"
property version : "1.2.1"

(*!@title PathInfo Reference
* Version : 1.2.1
* Author : Tetsuro KURITA ((<scriptfactory@mac.com>))
*)

(*!@group Class methods
Obtain information from a path quickly.
*)

(*!@abstruct
Obtain a name from a reference to a file/folder.
@param an_item (a reference to file/folder) : 
Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.
@result
text : a name of the passed item
*)
on name_of(an_item)
	return make_with(an_item)'s item_name()
end name_of

(*!@abstruct
Obtain a name of the item with removing a path extension.
Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.
@result
Unicode text : basename of the passed item
*)
on basename_of(an_item)
	return make_with(an_item)'s basename()
end basename_of

(*!@abstruct
Obtain a path extension of the item. The result does not starts with ".".
@param an_item (a reference to file/folder) : 
Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.
<!-- end locale -->
@result
text : A path extension
*)
on path_extension_of(an_item)
	return make_with(an_item, true)'s path_extension()
end path_extension_of

on suffix_of(an_item)
	return path_extension_of(an_item)
end suffix_of

(*!@abstruct
Split a file name into a base name and a path extension.
@param a_name (text) : A file name
<!-- end locale -->
@result list of text: {basename, path_extension}
*)
on split_name(a_name)
	if a_name contains "." then
		set tid to AppleScript's text item delimiters
		set AppleScript's text item delimiters to {"."}
		set name_elements to every text item of a_name
		set a_suffix to name_elements's item -1
		set a_basename to (items 1 thru -2 of name_elements) as Unicode text
		set AppleScript's text item delimiters to tid
	else
		set a_basename to a_name
		set a_suffix to missing value
	end if
	return {a_basename, a_suffix}
end split_name

(*!@abstruct
Obtain a folder path
@param an_item (a reference to file/folder) : 
Almost types of references to a file or a folder can be accepted. e.g.) HFS path, POSIX path, alias, file specification, reference form of Finder and furl.
<!-- end locale -->
@result
Unicode text : A path to the folder.
*)
on folder_of(an_item)
	return make_with(an_item)'s folder_ref()
end folder_of

(*!@group Constructor Methods *)

script POSIXPathTranslator
	property _delimiter : "/"
	
	on to_text(a_file)
		return a_file's POSIX path
	end to_text
	
	on to_alias(a_file)
		return (POSIX file a_file) as alias
	end to_alias
	
	on resolve_disk(path_elements)
		set n_elems to path_elements's length
		if (n_elems > 1) and (path_elements's item_at(2) is "Volumes") then
			if (n_elems > 2) then
				set a_disk to path_elements's compose(1, 3, true)
			else
				set a_disk to "/"
			end if
		else
			set a_disk to "/"
		end if
		return a_disk
	end resolve_disk
	
	on hfs_path()
		return (POSIX file (POSIX path of my _item_ref)) as Unicode text
	end hfs_path
	
	on as_text()
		return my _item_ref's POSIX path
	end as_text
end script

script HFSPathTranslator
	property _delimiter : ":"
	
	on to_text(a_file)
		return a_file as Unicode text
	end to_text
	
	on to_alias(a_file)
		return a_file as alias
	end to_alias
	
	on resolve_disk(path_elements)
		return (path_elements's item_at(1) & _delimiter)
	end resolve_disk
	
	on hfs_path()
		return my _item_ref as Unicode text
	end hfs_path
	
	on as_text()
		return my _item_ref as Unicode text
	end as_text
end script

(*!@abstruct
Make a PathInfo instance for a file reference.
@description
If a parameter is text and  does not starts with "/", a parameter is HFS path. And HFS path is used for internal processings. Otherwise, a POSIX path is userd for internal processings.

If a path ending with a path delimiter (&quot;/&quot; or &quot;&quot;) is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.
@param a_path (alias, furl, POSIX path or HFS path) 
@result script object : A new instance of PathInfo
*)
on make_with(a_path)
	set a_class to class of a_path
	if a_class is in {text, Unicode text, string} then
		if a_path starts with "~/" then
			set hf to (path to home folder)'s POSIX path
			if length of a_path > 2 then
				set a_path to hf & (text 3 thru -1 of a_path)
			else
				set a_path to hf
			end if
			set pathtrans to POSIXPathTranslator
		else if a_path starts with "/" then
			set pathtrans to POSIXPathTranslator
		else
			set pathtrans to HFSPathTranslator
		end if
	else
		set pathtrans to POSIXPathTranslator
	end if
	return make_with_pathtrans(a_path, pathtrans)
end make_with

(*!@abstruct
Make a PathInfo instance for a file reference.
@description
If a HFS path ending with ":" is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.
@param a_path (alias, furl, text of POSIX path) 
@result script object : A new instance of PathInfo
*)
on make_with_hfs(a_path)
	return make_with_pathtrans(a_path, HFSPathTranslator)
end make_with_hfs

(*!@abstruct
Make a PathInfo instance for a file reference. A synonym of ((<make_with>))
@description
If a POSIX path ending with "/" is passed as a parameter, the item is considered as a folder i.e. ((<is_folder>)) will return true.
@param a_path (alias, furl, text of POSIX path) 
@result script object : A new instance of PathInfo
*)
on make_with_posix(a_path)
	return make_with_pathtrans(a_path, POSIXPathTranslator)
end make_with_posix

on make_with_pathtrans(a_path, pathtrans)
	set a_class to class of a_path
	set is_text to false
	
	if a_class is in {Unicode text, string, text} then
		set is_text to true
	else
		if a_class is alias then
			set a_path to pathtrans's to_text(a_path)
		else if a_class is in {file specification, «class furl»} then
			try
				set a_path to pathtrans's to_text(a_path as alias)
			on error
				set a_path to pathtrans's to_text(a_path)
				set is_text to true
			end try
		else
			try
				set a_path to a_path as alias
			on error
				error (a_class as Unicode text) & " is unsupported data type. PathInfo can't convert to a path." number 980
			end try
			set a_path to pathtrans's to_text(a_path)
		end if
	end if
	
	set path_elements to pathtrans's decompose(a_path)
	set a_disk to pathtrans's resolve_disk(path_elements)
	if not is_text then
		set a_disk to pathtrans's to_alias(a_disk)
	end if
	
	set a_name to path_elements's item_at(-1)
	if a_name is "" then
		set folder_flag to true
		set a_name to path_elements's item_at(-2)
		if path_elements's length is 2 then -- if a_path is disk
			tell application "Finder"
				set a_folder to desktop
			end tell
		else -- if a_path is folder
			set a_folder to path_elements's compose(1, -3, true)
			if not is_text then
				set a_folder to pathtrans's to_alias(a_folder)
			end if
		end if
	else
		set folder_flag to false
		if path_elements's length > 1 then
			set a_folder to path_elements's compose(1, -2, true)
			if not is_text then
				set a_folder to pathtrans's to_alias(a_folder)
			end if
		else
			set a_folder to missing value
		end if
	end if
	
	set {a_basename, a_suffix} to split_name(a_name)
	return make_with_vars(pathtrans, a_disk, a_folder, a_name, a_basename, a_suffix, folder_flag, a_path)
end make_with_pathtrans

on make_with_opts(a_path, {prefering_posix:a_bool})
	if a_bool then
		set pathtrans to POSIXPathTranslator
	else
		set pathtrans to HFSPathTranslator
	end if
	return make_with_pathtrans(a_path, pathtrans)
end make_with_opts

on make_with_vars(pathtrans, a_disk, a_folder, a_name, a_basename, a_suffix, folder_flag, a_path)
	script PathInfo
		property parent : pathtrans
		property _disk : a_disk
		property _folder : a_folder
		property _name : a_name
		property _basename : a_basename
		property _path_extension : a_suffix
		property _is_folder : folder_flag
		property _item_ref : a_path
	end script
	return PathInfo
end make_with_vars

(*!@group Obtain path information *)

(*!@abstruct 
Obtain a name of the file or the folder.
@result text
*)
on item_name()
	return my _name
end item_name

(*!@abstruct 
Obtain a name without path extension.
@result text
*)
on basename()
	return my _basename
end basename

(*!@abstruct 
Obtain a path extension of the file name. The result does not starts with ".".
@result text
*)
on path_extension()
	return my _path_extension
end path_extension

(*!@abstruct 
Obtain a file reference to the folder containing the target.
@result an alias or a path
*)
on folder_ref()
	return my _folder
end folder_ref

(*!@abstruct 
Whether the target is a folder or not.
@description
If given path ends with a path delimiter, true will be returned wtihout checking file system. Therefor a wrong result may be returned.
@result boolean
*)
on is_folder()
	return my _is_folder
end is_folder

(*!@abstruct 
Obtain an internal file reference which the target contains.
@result alias or text of path
*)
on item_ref()
	return my _item_ref
end item_ref

(*!@abstruct 
Whether an item exits in the file sysem or not.
@description
If the target exsits, the internal file reference is converted to an alias.
@result boolean
*)
on item_exists()
	try
		set my _item_ref to to_alias(to_text(my _item_ref))
		set my _folder to to_alias(to_text(my _folder))
		return true
	end try
	return false
end item_exists

(*!@abstruct 
Whether an item exits in the file sysem or not.
@description
The internal file reference will not be changed unlike ((<item_exists>)). 
@result boolean
*)
on item_exists_without_update()
	try
		to_alias(to_text(my _item_ref))
		return true
	end try
	return false
end item_exists_without_update

(*!@abstruct 
If ((<child>)) and ((<change_folder>)) prefer posix path, true is returned.
@result boolean
*)
on is_posix()
	return my _delimiter is "/"
end is_posix

(*!@group Converting reference form *)

(*!@abstruct Obtain a file reference as alias.
@description
If failed to coerce to an alias, an error will raise.
@result alias
*)
on as_alias()
	if class of my _item_ref is not alias then
		set my _item_ref to to_alias(to_text(my _item_ref))
		set my _folder to to_alias(to_text(my _folder))
	end if
	return my _item_ref
end as_alias

(*!@abstruct Obtain a file reference as File URL.
@result File URL
*)
on as_furl()
	return my _item_ref as «class furl»
end as_furl

(*!@abstruct Obtain a file reference as POSIX path form.
@result text
*)
on posix_path()
	return my _item_ref's POSIX path
end posix_path

(*!@abstruct Obtain POSIX path which does not end with "/".
@result text
*)
on normalized_posix_path()
	set a_path to posix_path()
	if a_path ends with "/" then
		set a_path to text 1 thru -2 of a_path
	end if
	return a_path
end normalized_posix_path

(*!@syntax hfs_path()
@abstruct Obtain a file reference as HFS path form.
@result text
*)

(*!@syntax as_text()
@abstruct Obtain a path text.
@result text of HFS path or POSX path. The path form follows the path form passed to ((<make_with>)).
*)


(*!@group Making a new instance from the instance *)

(*!@abstruct 
Obtain an instance of PathInfo referencing the folder containing the target.
@result an instance of PathInfo
*)
on parent_folder()
	return make_with_opts(folder_ref(), {prefering_posix:is_posix()})
end parent_folder

(*!@abstruct
Make a new PathInfo changing the item name.
@param a_name (text) : An item name
@result script object : A new instance of PathInfo
*)
on change_name(a_name)
	set {a_basename, a_suffix} to split_name(a_name)
	tell clone()
		set its _name to a_name
		set its _basename to a_basename
		set its _path_extension to a_suffix
		set its _item_ref to build_path()
		return it
	end tell
end change_name

(*!@abstruct
Make a new PathInfo changing the path extension
@param a_text (text) : A path extension. It should not start with &quot;.&quot;.
@result script object : a new instance of PathInfo
*)
on change_path_extension(a_text)
	tell clone()
		set its _path_extension to a_text
		if a_text is missing value then
			set its _name to its _basename
		else
			set its _name to its _basename & "." & a_text
		end if
		set its _item_ref to build_path()
		return it
	end tell
end change_path_extension

(*!@abstruct
Make a new PathInfo changing the folder.
@description
The path form for a parameter must keep consistency with a path passed to the constructor method. If the target was constucted by ((<make_with_posix>)). The path form must be POSIX. If the target was constructed by ((<make_with_hfs>)), the path form must be HFS.
@param a_folder (alias, furl, POSIX path or HFS path) : A reference to a folder
@result script object : A new instance of PathInfo
*)
on change_folder(a_folder)
	if (class of a_folder is in {text, Unicode text, string}) and (a_folder does not end with delimiter()) then
		set a_folder to a_folder & delimiter()
	end if
	tell clone()
		set its _folder to a_folder
		set its _disk to missing value
		set its _item_ref to build_path()
		return it
	end tell
end change_folder

(*!@abstruct
Make a new PathInfo appending a sub path.
@description
The path form for a parameter must keep consistency with a path passed to the constructor method. If the target was constucted by ((<make_with_posix>)). The path form must be POSIX. If the target was constructed by ((<make_with_hfs>)), the path form must be HFS.
@param subpath (text)  : A relative path from the target.
@result script object : a new instance of PathInfo
*)
on child(subpath)
	set a_path to as_text()
	if a_path does not end with delimiter() then
		set a_path to a_path & delimiter()
	end if
	return make_with_opts(a_path & subpath, {prefering_posix:is_posix()})
end child

(*!@abstruct
Make a new PathInfo which refering the same file to the target.
@result script object : a instance of PathInfo
*)
on clone()
	return make_with_vars(parent, my _disk, my _folder, my _name, my _basename, my _path_extension, my _is_folder, my _item_ref)
end clone

(* private *)
on build_path()
	if my _path_extension is missing value then
		set a_name to my _name
	else
		set a_name to (my _basename & "." & my _path_extension)
	end if
	if my _is_folder then
		set a_name to a_name & delimiter()
	end if
	set folder_path to to_text(my _folder)
	return folder_path & a_name
end build_path

(* methods for PathElements *)
on item_at(n)
	return my _contents's item n
end item_at

on compose(n1, n2, folder_flag)
	set tid to AppleScript's text item delimiters
	set AppleScript's text item delimiters to {my _delimiter}
	set a_result to (items n1 thru n2 of my _contents) as Unicode text
	if folder_flag then
		set a_result to a_result & my _delimiter
	end if
	set AppleScript's text item delimiters to tid
	return a_result
end compose

on make_path_elements(a_list)
	set a_parent to me
	script pathElements
		property parent : a_parent
		property _contents : a_list
		property length : length of a_list
	end script
end make_path_elements

on decompose(a_path)
	set tid to AppleScript's text item delimiters
	set AppleScript's text item delimiters to my _delimiter
	set a_list to every text item of a_path
	set AppleScript's text item delimiters to tid
	return make_path_elements(a_list)
end decompose

on delimiter()
	return my _delimiter
end delimiter

on set_name(a_name)
	set {my _basename, my _path_extension} to split_name(a_name)
	set my _name to a_name
	if class of my _item_ref is not alias then
		set its _item_ref to build_path()
	end if
	return me
end set_name

(*!@group Error Numbers and Error Messages
* number : 980
	* message : Unknown data type. PathInfo can't convert to a path.
	* Raise when a parameter passed to ((<make_with>)), ((<make_with_hfs>)), ((<make_with_posix>)),((<change_folder>)) can not be treated as a file reference.
*)

on run
	--return debug()
	try
		show helpbook (path to me) with recovering InfoPlist
	on error msg number errno
		display alert (msg & return & errno)
	end try
end run

on debug()
	--boot (module loader) for me
	
	--set a_path to "/Users/tkurita/Dev/Projects/TeX Tools for mi/サンプル/insert-file/sample-figure.pdf"
	--set a_path to "/Volumes/Users/tkurita/Dev/Projects/TeX Tools for mi/サンプル/insert-file/"
	--set a_path to path to me
	--set a_path to alias "Macintosh HD:Users:tkurita:Desktop:Untitled2.scpt"
	--set a_path to "HelpSearch.scpt"
	--set a_result to do(POSIX file a_path)
	--class of name of a_result
	--set a_path to choose file name default name "index.html"
	--prefer_posix(false)
	set a_path to "Macintosh HD:Users:tkurita:Library:Preferences:InsertSignature"
	--set pathelems to POSIXPathTranslator's decompose(a_path)
	--return pathelems
	--return pathelems's compose(true)
	set a_result to make_with(a_path)
	return a_result's change_path_extension(missing value)'s posix_path()
	return a_result's posix_path()
	--set a_result to make_with_hfs(a_path)
	return a_result's as_text()
	log a_result's build_path()
	--return a_result's clone()
	return a_result's change_path_extension("txt")
	return a_result's clone()
	return a_result
end debug


