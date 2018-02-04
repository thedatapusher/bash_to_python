#!/bin/bash

CFIN_VERSION="2016.2.1"
ROOT_PATH="/var/tmp"
QUEUE=""



###### WGET VERBOSE | KEEP ONLY ONE ACTIVE ######
# WGET_VERBOSE=""    # Verbose
 WGET_VERBOSE="-q"  # Quiet
# WGET_VERBOSE="-nv" # No Verbose


####### PATHS VARIABLES ######
REPODIR="$ROOT_PATH/CFIN$CFIN_VERSION"
SUBREPOS="DKU FLAMEPREMIUM FLAME FLARE FLAMEASSIST LUSTRE BURN LUSTREBURN BACKBURNER WIRETAPCENTRAL WIRETAPGATEWAY MIO"
LINUXREPOS="FLAME FLARE FLAMEASSIST BACKBURNER WIRETAPCENTRAL WIRETAPGATEWAY MIO"
MACREPOS="FLAME FLARE FLAMEASSIST WIRETAPCENTRAL WIRETAPGATEWAY MIO"
WINREPOS="BACKBURNER"

###### DOWNLOAD LINKS VARIABLES ######
## DKU
DL_DKU="http://efulfillment.autodesk.com/pub1/dku/DKU_10.6.0.tar.gz?authparam=1573826840_3aad0e3e1c655a190abd23b41ca530f5&ext=.gz"
DL_DKU_md5="http://efulfillment.autodesk.com/pub1/dku/DKU_10.6.0.tar.gz.md5?authparam=1573826855_9e49c43a87a45e4b83a774516131ea39&ext=.md5"

## FLAMEPREMIUM
DL_FP="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flamepremium_2016.2_SP1_LINUX64_RHEL6.tar?authparam=1580987857_23f514683cfbb694fa80749b0960d086&ext=.tar"
DL_FP_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flamepremium_2016.2_SP1_LINUX64_RHEL6.tar.md5?authparam=1580987859_fd8627d566609a869ae1989afaf85ac4&ext=.md5"

## FLAME LINUX
DL_FLAMEL="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flame_2016.2_SP1_LINUX64_RHEL6.tar?authparam=1580986250_b74ec9e412356571a762a8d3ece7f420&ext=.tar"
DL_FLAMEL_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flame_2016.2_SP1_LINUX64_RHEL6.tar.md5?authparam=1580986252_402fdb95c251474f159f0b32a096d822&ext=.md5"

## FLAME MAC
DL_FLAMEM="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flame_2016.2_SP1_english_MAC_OSX.dmg?authparam=1580985834_20dccdf39f38a21462981cc0a719c186&ext=.dmg"
DL_FLAMEM_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flame_2016.2_SP1_english_MAC_OSX.dmg.md5?authparam=1580985836_688f50f257376e67ac8acf28a537f264&ext=.md5"

## FLARE LINUX
DL_FLAREL="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flare_2016.2_SP1_LINUX64_RHEL6.tar?authparam=1580988839_7bc00ebb39babcefabc92e503e608257&ext=.tar"
DL_FLAREL_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flare_2016.2_SP1_LINUX64_RHEL6.tar.md5?authparam=1580988841_5859647d730e605f06cdfd26600f4916&ext=.md5"

## FLARE MAC
DL_FLAREM="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flare_2016.2_SP1_english_MAC_OSX.dmg?authparam=1580988386_373b63b0e6251237afdeb4c3542a94af&ext=.dmg"
DL_FLAREM_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flare_2016.2_SP1_english_MAC_OSX.dmg.md5?authparam=1580988388_baef70b374b5f16412d95855d19740e9&ext=.md5"

## FLAME ASSIST LINUX
DL_FAL="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flameassist_2016.2_SP1_LINUX64_RHEL6.tar?authparam=1580987208_618e0c50e7aed63ebefc66c4392ef3a1&ext=.tar"
DL_FAL_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flameassist_2016.2_SP1_LINUX64_RHEL6.tar.md5?authparam=1580987211_827aaacbd668af015c2efc7416791a4f&ext=.md5"

## FLAME ASSIST MAC
DL_FAM="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flameassist_2016.2_SP1_english_MAC_OSX.dmg?authparam=1580986751_f95cf66754401616c5be1041de791b51&ext=.dmg"
DL_FAM_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_flameassist_2016.2_SP1_english_MAC_OSX.dmg.md5?authparam=1580986753_6ac773ffde74bea976783348eee96e6f&ext=.md5"

## LUSTRE
DL_LUSTRE="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_lustre_2016.2_SP1_LINUX64_RHEL6.tar?authparam=1580989259_c68ba46ce5b432bd2eacf2048e8a9246&ext=.tar"
DL_LUSTRE_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_lustre_2016.2_SP1_LINUX64_RHEL6.tar.md5?authparam=1580989261_2bf09aad42e3f7d593dc7f0e202b1f41&ext=.md5"

## BURN
DL_BURN="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_burn_2016.2_SP1_LINUX64_RHEL6.tar?authparam=1580985306_b0e584e5408ec3a43de79347a9dbdfc8&ext=.tar"
DL_BURN_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_burn_2016.2_SP1_LINUX64_RHEL6.tar.md5?authparam=1580985309_3a9c00229159c771acd92358166e7a39&ext=.md5"

## BACKBURNER LINUX
DL_BBL="http://efulfillment.autodesk.com/pub1/CF_2016.1.0_319/backburner2016.1.0_2151_LINUX.tar.gz?authparam=1568215160_d1062421161c2468d179f4ea61b827be&ext=.gz"
DL_BBL_md5="http://efulfillment.autodesk.com/pub1/CF_2016.1.0_319/backburner2016.1.0_2151_LINUX.tar.gz.md5?authparam=1568215226_136efb4251d7787460bd75c969e42a9a&ext=.md5"

## BACKBURNER WINDOWS
DL_BBW="http://efulfillment.autodesk.com/pub1/CF_2016.1.0_319/backburner2016.1.0_2151_WINDOWS.zip?authparam=1568215248_024203213293325dfb77366d1d992df7&ext=.zip"
DL_BBW_md5="http://efulfillment.autodesk.com/pub1/CF_2016.1.0_319/backburner2016.1.0_2151_WINDOWS.zip.md5?authparam=1568215264_a17d6380c145252b3ad7ab4c224969bf&ext=.md5"

## LUSTRE BURN
DL_LB="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_lustrerenderer_2016.2_SP1_LINUX64_RHEL6.tar?authparam=1580989466_d7c0d4d3b4f96a9d815de2251be398f3&ext=.tar"
DL_LB_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_lustrerenderer_2016.2_SP1_LINUX64_RHEL6.tar.md5?authparam=1580989469_2a63b7df5b61f49475e34a3b8cc7ecca&ext=.md5"

## WIRETAP CENTRAL LINUX
DL_WTCL="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_wiretapcentral_2016.2_SP1_LINUX64_RHEL6.tar?authparam=1580989883_45e36bb3958fb25a88fce6be86602dfa&ext=.tar"
DL_WTCL_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_wiretapcentral_2016.2_SP1_LINUX64_RHEL6.tar.md5?authparam=1580989886_053c3a2aa423038ad5a5622092213f40&ext=.md5"

## WIRETAP CENTRAL MAC
DL_WTCM="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_wiretapcentral_2016.2_SP1_MAC_OSX.dmg?authparam=1580990064_bf2ecb6af0da11afa1f62b316e135b2e&ext=.dmg"
DL_WTCM_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_wiretapcentral_2016.2_SP1_MAC_OSX.dmg.md5?authparam=1580990066_f90ea606d4ef2700091830966e6b6264&ext=.md5"

## WIRETAP GATEWAY LINUX
DL_WTGL="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_wiretapgateway_2016.2_SP1_LINUX64_RHEL6.tar?authparam=1580990207_f286846a7b9520dab059dbf8be5be4c2&ext=.tar"
DL_WTGL_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_wiretapgateway_2016.2_SP1_LINUX64_RHEL6.tar.md5?authparam=1580990210_b0ac568932f776a9f4839777e93ee6c9&ext=.md5"

## WIRETAP GATEWAY MAC
DL_WTGM="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_wiretapgateway_2016.2_SP1_MAC_OSX_Use_With_Flame_Products.dmg?authparam=1580990392_de75aefb8169d4831db12bcce5fab54e&ext=.dmg"
DL_WTGM_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_wiretapgateway_2016.2_SP1_MAC_OSX_Use_With_Flame_Products.dmg.md5?authparam=1580990395_51657ab2a8591aae601dca9f6421ea38&ext=.md5"

## MIO LINUX
DL_ML="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_mio_2016.2_SP1_LINUX64_RHEL6.tar?authparam=1580989591_547dbf8d8ada1f1fa2d5ad86cfa82d5b&ext=.tar"
DL_ML_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_mio_2016.2_SP1_LINUX64_RHEL6.tar.md5?authparam=1580989593_340fda244f8199e8ecea0e4944ef5d09&ext=.md5"

## MIO MAC
DL_MM="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_mio_2016.2_SP1_MAC_OSX.dmg?authparam=1580989752_1c7df7ac06ed5292f8b2cbe9855142f8&ext=.dmg"
DL_MM_md5="http://efulfillment.autodesk.com/pub1/CF_2016.2.1_190/autodesk_mio_2016.2_SP1_MAC_OSX.dmg.md5?authparam=1580989754_f88a6f6221f9da11bac97cac70c2e34f&ext=.md5"


DOWNLOAD_MENU()
{
clear
echo "Welcome to the CFIN 2016x2.1 downloader"
echo ""
echo 'Select the SOFTWARE you wish to download:'
echo "Current Download Queue: "  $QUEUE
echo ""
PS3='Input the number: '
select soft in \
    'DKU' \
    'Flame Premium' \
    'Flame(LINUX)' \
    'Flame(MAC)' \
    'Flare(LINUX)' \
    'Flare(MAC)' \
    'Flame Assist(LINUX)' \
    'Flame Assist(MAC)' \
    'Lustre' \
    'Burn' \
    'Lustre Renderer' \
    'Backburner(LINUX)' \
    'Backburner(WINDOWS)' \
    'Wiretap Central(LINUX)' \
    'Wiretap Central(MAC)' \
    'Wiretap Gateway(LINUX)' \
    'Wiretap Gateway(MAC)' \
    'MIO(LINUX)' \
    'MIO(MAC)' \
    'ALL YOU CAN EAT' \
    'START DOWNLOAD'
do
    case $REPLY in
        1 ) if [[ $QUEUE != *"DKU"* ]] 
               then
                  QUEUE+="DKU "
	          DOWNLOAD_MENU
               else
                  DOWNLOAD_MENU
            fi
	     ;;
        2 ) if [[ $QUEUE != *"FLAMEPREMIUM"* ]] 
               then
                  QUEUE+="FLAMEPREMIUM "
                  DOWNLOAD_MENU
               else
                  DOWNLOAD_MENU
            fi
	     ;;
        3 ) if [[ $QUEUE != *"FLAME_LINUX"* ]]
               then
	          QUEUE+="FLAME_LINUX "
                  DOWNLOAD_MENU
               else
                  DOWNLOAD_MENU
            fi
	     ;;
        4 ) if [[ $QUEUE != *"FLAME_MAC"* ]]
               then
	          QUEUE+="FLAME_MAC "
                  DOWNLOAD_MENU
               else
                  DOWNLOAD_MENU
            fi
	     ;;
        5 ) if [[ $QUEUE != *"FLARE_LINUX"* ]]
               then
	          QUEUE+="FLARE_LINUX "
                  DOWNLOAD_MENU
               else
                  DOWNLOAD_MENU
            fi
	     ;;
        6 ) if [[ $QUEUE != *"FLARE_MAC"* ]]
               then
	          QUEUE+="FLARE_MAC "
                  DOWNLOAD_MENU
               else
                  DOWNLOAD_MENU
            fi
	     ;;
        7 ) if [[ $QUEUE != *"FLAMEASSIST_LINUX"* ]]
               then
	          QUEUE+="FLAMEASSIST_LINUX "
                  DOWNLOAD_MENU
               else
                  DOWNLOAD_MENU
            fi
	     ;;
        8 ) if [[ $QUEUE != *"FLAMEASSIST_MAC"* ]]
               then
	          QUEUE+="FLAMEASSIST_MAC "
                  DOWNLOAD_MENU
               else
                  DOWNLOAD_MENU
            fi
	     ;;
        9 ) if [[ $QUEUE != *"LUSTRE"* ]]
               then
	          QUEUE+="LUSTRE "
                  DOWNLOAD_MENU
               else
                  DOWNLOAD_MENU
            fi
	     ;;
        10 ) if [[ $QUEUE != *"BURN"* ]]
                then
	           QUEUE+="BURN "
                   DOWNLOAD_MENU
                else
                   DOWNLOAD_MENU
             fi
	     ;;
        11 ) if [[ $QUEUE != *"LUSTRERENDERER"* ]]
                then
	           QUEUE+="LUSTRERENDERER "
                   DOWNLOAD_MENU
                else
                   DOWNLOAD_MENU
             fi
	     ;;
        12 ) if [[ $QUEUE != *"BACKBURNER_LINUX"* ]]
                then
	           QUEUE+="BACKBURNER_LINUX "
                   DOWNLOAD_MENU
                else
                   DOWNLOAD_MENU
             fi
	     ;;
        13 ) if [[ $QUEUE != *"BACKBURNER_WINDOWS"* ]]
                then
	           QUEUE+="BACKBURNER_WINDOWS "
                   DOWNLOAD_MENU
                else
                   DOWNLOAD_MENU
             fi
	     ;;
        14 ) if [[ $QUEUE != *WIRETAPCENTRAL_LINUX""* ]]
                then
	           QUEUE+="WIRETAPCENTRAL_LINUX "
                   DOWNLOAD_MENU
                else
                   DOWNLOAD_MENU
             fi
	     ;;
        15 ) if [[ $QUEUE != *"WIRETAPCENTRAL_MAC"* ]]
                then
	           QUEUE+="WIRETAPCENTRAL_MAC "
                   DOWNLOAD_MENU
                else
                   DOWNLOAD_MENU
             fi
	     ;;
        16 ) if [[ $QUEUE != *"WIRETAPGATEWAY_LINUX"* ]]
	        then
	           QUEUE+="WIRETAPGATEWAY_LINUX "
                   DOWNLOAD_MENU
                else
                   DOWNLOAD_MENU
             fi
	     ;;
        17 ) if [[ $QUEUE != *"WIRETAPGATEWAY_MAC"* ]]
                then
	           QUEUE+="WIRETAPGATEWAY_MAC "
                   DOWNLOAD_MENU
                else
                   DOWNLOAD_MENU
             fi
	     ;;
        18 ) if [[ $QUEUE != *"MIO_LINUX"* ]]
                then
	           QUEUE+="MIO_LINUX "
                   DOWNLOAD_MENU
                else
                   DOWNLOAD_MENU
             fi
	     ;;
        19 ) if [[ $QUEUE != *"MIO_MAC"* ]]
                then
	           QUEUE+="MIO_MAC "
                   DOWNLOAD_MENU
                else
                   DOWNLOAD_MENU
             fi
	     ;;
        20 ) clear
             echo "BE PREPARED FOR THE "ALL YOU CAN EAT" BUFFET!"
             DOWNLOAD_AYCE
	     ;;
        21 ) DOWNLOAD_CFIN
	     ;;

	* ) echo 'invalid.' ;;
    esac
done
}

GET_DKU()
{
if [ ! -d $REPODIR/DKU ] ; then
   mkdir -p $REPODIR/DKU
   chmod -R 777 $REPODIR
   echo "Downloading DKU to $REPODIR/DKU/"
   wget $WGET_VERBOSE -P $REPODIR/DKU/ $DL_DKU $DL_DKU_md5	
   for f in $REPODIR/*/*\?*; do
       mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_FLAMEPREMIUM()
{
if [ ! -d $REPODIR/FLAMEPREMIUM ] ; then
   mkdir -p $REPODIR/FLAMEPREMIUM
   chmod -R 777 $REPODIR
   echo "Downloading Flame Premium to $REPODIR/FLAMEPREMIUM/"
   wget $WGET_VERBOSE -P $REPODIR/FLAMEPREMIUM/ $DL_FP $DL_FP_md5
   for f in $REPODIR/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi

}
GET_FLAME_LINUX()
{
if [ ! -d $REPODIR/FLAME/LINUX ] ; then
   mkdir -p $REPODIR/FLAME/LINUX
   chmod -R 777 $REPODIR
   echo "Downloading Flame to $REPODIR/FLAME/LINUX/"
   wget $WGET_VERBOSE -P $REPODIR/FLAME/LINUX/ $DL_FLAMEL $DL_FLAMEL_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_FLAME_MAC()
{
if [ ! -d $REPODIR/FLAME/MAC ] ; then
   mkdir -p $REPODIR/FLAME/MAC
   chmod -R 777 $REPODIR
   echo "Downloading Flame to $REPODIR/FLAME/MAC/"
   wget $WGET_VERBOSE -P $REPODIR/FLAME/MAC/ $DL_FLAMEM $DL_FLAMEM_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_FLARE_LINUX()
{
if [ ! -d $REPODIR/FLARE/LINUX ] ; then
   mkdir -p $REPODIR/FLARE/LINUX
   chmod -R 777 $REPODIR
   echo "Downloading Flare to $REPODIR/FLARE/LINUX/"
   wget $WGET_VERBOSE -P $REPODIR/FLARE/LINUX/ $DL_FLAREL $DL_FLAREL_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_FLARE_MAC()
{
if [ ! -d $REPODIR/FLARE/MAC ] ; then
   mkdir -p $REPODIR/FLARE/MAC
   chmod -R 777 $REPODIR
   echo "Downloading Flare to $REPODIR/FLARE/MAC/"
   wget $WGET_VERBOSE -P $REPODIR/FLARE/MAC $DL_FLAREM $DL_FLAREM_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_FLAMEASSIST_LINUX()
{
if [ ! -d $REPODIR/FLAMEASSIST/LINUX ] ; then
   mkdir -p $REPODIR/FLAMEASSIST/LINUX
   chmod -R 777 $REPODIR
   echo "Downloading Flame Assist to $REPODIR/FLAMEASSIST/LINUX"
   wget $WGET_VERBOSE -P $REPODIR/FLAMEASSIST/LINUX $DL_FAL $DL_FAL_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_FLAMEASSIST_MAC()
{
if [ ! -d $REPODIR/FLAMEASSIST/MAC ] ; then
   mkdir -p $REPODIR/FLAMEASSIST/MAC
   chmod -R 777 $REPODIR
   echo "Downloading Flame Assist to $REPODIR/FLAMEASSIST/MAC/"
   wget $WGET_VERBOSE -P $REPODIR/FLAMEASSIST/MAC $DL_FAM $DL_FAM_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_LUSTRE()
{
if [ ! -d $REPODIR/LUSTRE ] ; then
   mkdir -p $REPODIR/LUSTRE
   chmod -R 777 $REPODIR
   echo "Downloading Lustre to $REPODIR/LUSTRE/"
   wget $WGET_VERBOSE -P $REPODIR/LUSTRE/ $DL_LUSTRE $DL_LUSTRE_md5
   for f in $REPODIR/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_BURN()
{
if [ ! -d $REPODIR/BURN ] ; then
   mkdir -p $REPODIR/BURN
   chmod -R 777 $REPODIR
   echo "Downloading Burn to $REPODIR/BURN/"
   wget $WGET_VERBOSE -P $REPODIR/BURN/ $DL_BURN $DL_BURN_md5
   for f in $REPODIR/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_LUSTRERENDERER()
{
if [ ! -d $REPODIR/LUSTRERENDERER ] ; then
   mkdir -p $REPODIR/LUSTRERENDERER
   chmod -R 777 $REPODIR
   echo "Downloading Lustre Renderer to $REPODIR/LUSTRERENDERER/"
   wget $WGET_VERBOSE -P $REPODIR/LUSTRERENDERER/ $DL_LB $DL_LB_md5
   for f in $REPODIR/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_BACKBURNER_LINUX()
{
if [ ! -d $REPODIR/BACKBURNER/LINUX ] ; then
   mkdir -p $REPODIR/BACKBURNER/LINUX
   chmod -R 777 $REPODIR
   echo "Downloading Backburner to $REPODIR/BACKBURNER/LINUX/"
   wget $WGET_VERBOSE -P $REPODIR/BACKBURNER/LINUX/ $DL_BBL $DL_BBL_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_BACKBURNER_WINDOWS()
{
if [ ! -d $REPODIR/BACKBURNER/WINDOWS ] ; then
   mkdir -p $REPODIR/BACKBURNER/WINDOWS
   chmod -R 777 $REPODIR
   echo "Downloading Backburner to $REPODIR/BACKBURNER/WINDOWS/"
   wget $WGET_VERBOSE -P $REPODIR/BACKBURNER/WINDOWS/ $DL_BBW $DL_BBW_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_WIRETAPCENTRAL_LINUX()
{
if [ ! -d $REPODIR/WIRETAPCENTRAL/LINUX ] ; then
   mkdir -p $REPODIR/WIRETAPCENTRAL/LINUX
   chmod -R 777 $REPODIR
   echo "Downloading Wiretap Central to $REPODIR/WIRETAPCENTRAL/LINUX/"
   wget $WGET_VERBOSE -P $REPODIR/WIRETAPCENTRAL/LINUX/ $DL_WTCL $DL_WTCL_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_WIRETAPCENTRAL_MAC()
{
if [ ! -d $REPODIR/WIRETAPCENTRAL/MAC ] ; then
   mkdir -p $REPODIR/WIRETAPCENTRAL/MAC
   chmod -R 777 $REPODIR
   echo "Downloading Wiretap Central to $REPODIR/WIRETAPCENTRAL/MAC/"
   wget $WGET_VERBOSE -P $REPODIR/WIRETAPCENTRAL/MAC/ $DL_WTCM $DL_WTCM_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_WIRETAPGATEWAY_LINUX()
{
if [ ! -d $REPODIR/WIRETAPGATEWAY/LINUX ] ; then
   mkdir -p $REPODIR/WIRETAPGATEWAY/LINUX
   chmod -R 777 $REPODIR
   echo "Downloading Wiretap Gateway to $REPODIR/WIRETAPGATEWAY/LINUX/"
   wget $WGET_VERBOSE -P $REPODIR/WIRETAPGATEWAY/LINUX/ $DL_WTGL $DL_WTGL_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_WIRETAPGATEWAY_MAC()
{
if [ ! -d $REPODIR/WIRETAPGATEWAY/MAC ] ; then
   mkdir -p $REPODIR/WIRETAPGATEWAY/MAC
   chmod -R 777 $REPODIR
   echo "Downloading Wiretap Gateway to $REPODIR/WIRETAPGATEWAY/MAC/"
   wget $WGET_VERBOSE -P $REPODIR/WIRETAPGATEWAY/MAC/ $DL_WTGM $DL_WTGM_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_MIO_LINUX()
{
if [ ! -d $REPODIR/MIO/LINUX ] ; then
   mkdir -p $REPODIR/MIO/LINUX
   chmod -R 777 $REPODIR
   echo "Downloading MIO to $REPODIR/MIO/LINUX/"
   wget $WGET_VERBOSE -P $REPODIR/MIO/LINUX/ $DL_ML $DL_ML_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_MIO_MAC()
{
if [ ! -d $REPODIR/MIO/MAC ] ; then
   mkdir -p $REPODIR/MIO/MAC
   chmod -R 777 $REPODIR
   echo "Downloading MIO to $REPODIR/MIO/MAC/"
   wget $WGET_VERBOSE -P $REPODIR/MIO/MAC/ $DL_MM $DL_MM_md5
   for f in $REPODIR/*/*/*\?*; do
      mv "$f" "${f%%\?*}"
   done
   echo "Done!"
   echo ""
fi
}

GET_AYCE()
{
   GET_DKU
   GET_FLAMEPREMIUM
   GET_FLAME_LINUX
   GET_FLAME_MAC
   GET_FLARE_LINUX
   GET_FLARE_MAC
   GET_FLAMEASSIST_LINUX
   GET_FLAMEASSIST_MAC
   GET_LUSTRE
   GET_BURN
   GET_LUSTRERENDERER
   GET_BACKBURNER_LINUX
   GET_BACKBURNER_WINDOWS
   GET_WIRETAPCENTRAL_LINUX
   GET_WIRETAPCENTRAL_MAC
   GET_WIRETAPGATEWAY_LINUX
   GET_WIRETAPGATEWAY_MAC
   GET_MIO_LINUX
   GET_MIO_MAC
}

GET_CFIN()
{
   clear
   echo "Will download the following softwares:" $QUEUE
   echo ""
   for i in $QUEUE; do
      GET_$i
   done
}

DOWNLOAD_AYCE()
{
   GET_AYCE
   exit 0
}

DOWNLOAD_CFIN()
{
   GET_CFIN
   exit 0
}


DOWNLOAD_MENU

