#!/bin/bash

if /usr/bin/hostnamectl | grep -q "Raspbian"; then
    mv AIpythonicapple.desktop /usr/share/raspi-ui-overrides/applications/AIpythonicapple.desktop
    mv pythonicapple.desktop /usr/share/raspi-ui-overrides/applications/pythonicapple.desktop
    sudo chmod +x run-pythonicapple
    sudo chmod +x run-pythonicappleAI
    mv run-pythonicapple /bin/run-pythonicapple
    mv run-pythonicappleAI /bin/run-pythonicappleAI
    mkdir /usr/lib/python3/dist-packages/pythonicapple
    mv pythonicapple.py /usr/lib/python3/dist-packages/pythonicapple/pythonicapple.py
    mv high_score.txt /usr/lib/python3/dist-packages/pythonicapple/high_score.txt
    mv Ak.png /usr/share/pixmaps/Ak.png
    rm $0
    cat "To play the game, please select the application as located under the 'Applications Menu' under 'Games'. Remember that the only keys that function to move the snake is the right and left arrow keys. Remember to play from the snake's perspective, not yours!" > README.txt
else
    >&2 echo "Error: Please download the package for the correct Operating System!"
fi
