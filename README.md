# Script-Tools
- collection of some scripts or tools that are handy and make work eaiser.
- Mostly written by me and some are inspired for others.

## 1. InsertAllSlides.ppam

- This is Powerpoint Add-in (VBA macro/script)
- What it does?: insert all slides from all presentations in the same folder as the currently active presentation (but won't try to insert slides from the current presentation into itself).
- this the best and easiest way to **merge Microsoft Presentations**.
- Courtesy: 
  - Solution 2 at [PPTools](https://www.rdpslides.com/pptfaq/FAQ00746_Insert_all_slides_from_a_group_of_presentations_into_the_current_presentation.htm)
  - [Office RibbonX editor](https://github.com/fernandreu/office-ribbonx-editor)
- Initialisation:
  - Turn on Developer tab: File > Options > Customize Ribbon > check [ ] Developer
  - Add the add-in: Developer Tab > Powerpoint Add-ins > Add New... & brouse for the above downloaded add-in.
  - This will create 'Insert slides from folder' ribbon button in Developer tab > 'Custom' group
- Usage: open a ppt to which you want to add the slides from all other ppts within the same folder. Click on the 'Insert slides from folder' button to import all the slides. _Hurray!_


## 2. magic-png2gif

- Batch script (cmd.exe or ps)
- Combine all images within each folder (along side this script) into a single gif named as the folder name.
- assumes all images are of same size and in png format.
- Needs [magick](https://imagemagick.org/)
- Additional resources: [Magick.NET](https://github.com/dlemstra/Magick.NET)

## 3. pandoc-img2ppt

- Batch script
- Combine all images to a single ppt.
- Takes both .jpg and .png files.
- Needs [pandoc](https://pandoc.org/installing.html)
- Run it from dir where images are there along side this script. It creates an intermediary markdown file.

## 4. pandoc-MD2PPTX

- Drag and drop a markdown file over this script to convert it into a ppt.
- markdown file should be well formatted as slides.
- Needs [pandoc](https://pandoc.org/installing.html)


## 5. QuickCopyAIO_v2

- needs [Autohotkey](https://www.autohotkey.com/) Version 2.x
- AutoHotKey Script to quickly paste text or images from clipboard to a target application.
- There are two versions of the script one for depricated AHK v1.1 (at now archived [repository](https://github.com/drmdshahid/QuickCopyAHK) ) and another for 2.x (this). They are intercompatible.
- Use case: Quickly collect snippets of text into a notetaking app or slide show while reading a document. Saves a lot of labour!
