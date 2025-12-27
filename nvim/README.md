## Instalando lazy vim debian

## Paso 1:

Ejecutar el siguiente comando en la terminal para descargar desde el repositorio oficial de github de neovim, en este caso la versión más reciente

    cd /tmp
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

## Paso 2:

Extraerlo en /opt, esto se hace en la misma carpeta /tmp

    sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

Para verificar la instalación podemos ir a revisar la carpeta /opt

    ls /opt/nvim-linux-x86_64

Verificamos igual la versión

    nvim --version

## Instalación de lazy vim:

En caso de ser necesario eliminar caché vieja de anteriores intalaciones:

    mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
    mv ~/.local/share/nvim ~/.local/share/nvim.bak 2>/dev/null
    mv ~/.cache/nvim ~/.cache/nvim.bak 2>/dev/null

Ahora si instalar lazy vim del repositorio oficial:

    git clone https://github.com/LazyVim/starter ~/.config/nvim

Eliminar .git de la plantilla:

    rm -rf ~/.config/nvim/.git
