#!/bin/bash

# Fonction pour demander à l'utilisateur de deviner le nombre de fichiers
guess_files() {
    local correct_answer=$(ls -1 | wc -l)
    local guess=0

    # Boucle jusqu'à ce que l'utilisateur devine correctement
    while [[ $guess -ne $correct_answer ]]; do
        echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
        read guess

        # Vérification de la réponse de l'utilisateur
        if [[ $guess -lt $correct_answer ]]; then
            echo "Trop bas ! Essayez encore."
        elif [[ $guess -gt $correct_answer ]]; then
            echo "Trop haut ! Essayez encore."
        else
            echo "Félicitations, vous avez trouvé le bon nombre de fichiers !"
        fi
    done
}

# Appel de la fonction guessing
guess_files
