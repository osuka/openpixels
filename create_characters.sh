#!/bin/bash

# Programmatically create characters based on layers that form them
# it creates a spritesheet plus a plist file for each character

function create_char () {
  xcf2png ./open_chars.xcf $2 --output ./examples/characters/osuka/$1.png
  cat ./open-char-base.plist | sed "s/BASENAME/$1/g" >./examples/characters/osuka/$1.plist
}

create_char riot-police "misc_shadown body_olive misc_shoes misc_blackgloves cloths_bluered_trousers cloths_bluered_tshirt head_bluered_helmet"

create_char bank-robber "misc_shadown body_caucassian eyes_default eyes_brown misc_shoes cloths_jeans cloths_redstripesshirt misc_mask hair_cuttedblack"
