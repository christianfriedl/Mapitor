# Mapitor

In-Browser Mind Mapping Tool, written in JavaScript with Node.js

Version 0.1.0

(c) Copyright 2015 by Christian Friedl. Released under the GPL, v3.

**This is not a stable release. The software is in very early pre-alpha and will just create a random map with no load/save facility right now.**

* Here's what you currently CAN do with it:
    * Use TAB to create a new textnode from the current one
    * Use DEL to delete a textnode
    * Click on a textnode to edit its contents

The only available layout is circular, for now.

Please note that I'm dissatisfied with the name and will probably change it at some point.

## Main Dependencies:

* Node.js
* npm
* underscore.js, jQuery and Raphael.js. 

(Please see package.json for the full authoritative list.)

**Target Browser:** Google Chrome (>= Version 44). I never tried it in any other browser, and probably never will.

## Installation

### If you just want to use it:

* Clone the repository from https://github.com/christianfriedl/Mapitor
* Point your browser to the file under <mapitor>/html/index.html

### If you want to test/contribute/Use the Source, Luke:

There is no real professional installation modality as of now. Here's what methinks should work:

* Clone the repository from https://github.com/christianfriedl/Mapitor
* cd into that directory
* run ``npm install``
* Point your browser to the file under <mapitor>/html/index.html

## Motivation

Currently available mind-mapping tools (or otherwise, tools for organisating information) fall in two categories:

- Tools with automatic layout and strict hierarchical structure (FreePlane)
- Tools with manual layout, little semantics attached to graphical elements, but free structure (Prezi.com)

I want both. I want to think about layout as little as possible, and I want to be able to draw connections between arbitrary nodes with ease.
Furthermore, I want the whole thing to be keyboard driven as much as possible, and I want it to work in the browser for the obvious portability and maintainability advantages.

(By the way, FreePlane is absolutely *awesome* and is still my go-to mindmapper! I don't see this here little project ever being a serious alternative to FreePlane.)

## Goals for Version 1.0

* Be able to insert, change and delete text nodes
* Be able to add and remove arrows (with "forward", "backward", "both" or "none" direction attribute)
* Have the following automatic layout modes:
    * circular, hierarchical, tabular
* Have an alternative manual layout mode in which each node is placed just where the user dropped it
* Have a simple command language
* Be able to zoom and scroll
* Be able to "load" (upload) and "save" (download) a JSON representation of the file
* Be able to persist the application state via a small web server
* Multi-level undo

## Architecture and Modeling

### Library choices:
* Mapitor is based on Node.js. Some main dependencies are underscore.js, jQuery and Raphael.js.
* Graphics are based on svg (via Raphael).

### Architecture:

* Our basic model types are:
    * text nodes
    * arrows
    * areas
* Areas are the only node type that can contain other nodes (including other areas).
* Nodes are bound to widgets.
* Layouts are done via layouters.
* Widgets are painted by painters.
* Widgets, layouters and painters are chosen by factories.
* All UI commands are run through a Command object so as to provide undo functionality 
* The map is the main arbitrator between the UI, the main area and the layout/painting functionality. (It might probably be renamed to controller at some point.)
