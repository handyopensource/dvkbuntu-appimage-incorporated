# dvkbuntu-appimage-incorporated  
   
**Dans ce dépot vous trouverez 4 scripts et des icônes.**  

Ces scripts servent à ajouter des AppImages avec des raccouris dans les menus utilisateurs.  

**Il y a deux types de scripts :**  
     
**1- Ceux qui installent les AppImages et des raccourcis-lanceurs dans votre dossier utilisateur dans un système installé afin d'avoir un raccourcis dans votre menu.**  
Les applis AppImages qui seront téléchargés dans le dossier /home/<votre_nom_utilisateur>/AppImage  
  
Voici les instructions d'installation :  
  
*pour ElectronPlayer :*  
  
```bash    
wget https://github.com/handyopensource/dvkbuntu-appimage-incorporated/raw/master/electronplayerinyoursystem.sh   
chmod +x electronplayerinyoursystem.sh   
./electronplayerinyoursystem.sh   
```
  
*pour molotov :*  
  
```bash    
wget https://github.com/handyopensource/dvkbuntu-appimage-incorporated/raw/master/molotovinyoursystem.sh   
chmod +x molotovinyoursystem.sh   
./molotovinyoursystem.sh   
```
  
**2- Les scripts qui installent les raccourcis-lanceurs et AppImages dans le dossier /etc/skel/ de votre système afin que tout les nouveaux utilisateurs créer après exécutions des scripts aient les AppImages dans leurs futurs dossiers utilisateurs.**
J'ai créé ces scripts pour que tout les utilisateurs pour de nos ISOs est ces logiciels dans leur session, les ISOs que nous créons pour notre projet général (dvkbuntu).  
  
Voici comment les installer dans votre système :  
  
*pour ElectronPlayer :*  
  
```bash    
wget https://github.com/handyopensource/dvkbuntu-appimage-incorporated/raw/master/electronplayer-in-etc-skel.sh   
chmod +x electronplayer-in-etc-skel.sh  
sudo ./electronplayer-in-etc-skel.sh   
```
  
*pour molotov :*  
  
```bash    
wget https://github.com/handyopensource/dvkbuntu-appimage-incorporated/raw/master/molotov-in-etc-skel.sh   
chmod +x molotov-in-etc-skel.sh   
sudo ./molotov-in-etc-skel.sh  
```  
  
À noter : qu'en **chroot**, étant donner que l'on utilise le compte root l'utilisation de **sudo est inutile**.  
