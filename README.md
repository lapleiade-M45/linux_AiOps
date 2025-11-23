# linux_log_agent

L’objectif de **linux_log_agent** est de permettre la surveillance d’un système Linux par un modèle d’IA local.  
Chaque nouvelle ligne des fichiers surveillés est envoyée à un serveur Python chargé du dispatch et du traitement des données.

Les paramètres réseau sont définis dans :

- `address` : dans `include/bash_agent.h`
- `port` : dans `include/bash_agent.h`

## Fonctionnement

Chaque fichier passé en argument est surveillé dans un thread dédié à l’aide de la bibliothèque **inotify**.

Lorsqu’une nouvelle ligne de log est détectée dans un fichier :

1. un socket est créé,
2. le log est envoyé au serveur,  
3. puis le socket est fermé.

## Compilation

```bash
cmake -B build && cmake --build build
```

## Execution

```bash
./build/srcs/iagent /var/log/auth.log /var/log/kern.log ...
```

# python server


Il existe de nombreux parametre pour le lancement de llama.cpp en mode serveur.
L'objectif a terme est de maitriser toute la chaine d'inference sur les modeles. 

Ici des parametre de base.

./llama-server --port 8080 -ngl 99 -m /data/iamedia/models/gguf_models/gpt-oss-20b-GGUF/gpt-oss-20b-F16.gguf --context-shift  --flash-attn 1 --reasoning-budget -0 --offline'
