#!/bin/sh

underlineFunc(){
	printf '\n'
}

while getopts i: flag
do
	    case "${flag}" in
		            i) identity=${OPTARG};;
			  
					        esac
					done



printf '*****************************************************************\nPlease wait while I start the shh agent\n*****************************************************************\n'

underlineFunc

eval `ssh-agent -s`

underlineFunc

printf '*****************************************************************\n ssh agent started :) \n*****************************************************************\n '

underlineFunc 

printf '*****************************************************************\nadding your github id...\n*****************************************************************\n'

underlineFunc 

ssh-add ~/.ssh/$identity

printf '\n'

printf '=============================\nAaaaand we are all Done!\n=============================='


