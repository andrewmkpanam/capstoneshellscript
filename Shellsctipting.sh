#!/bin/bash

echo "This is a script to show full and partial multiplcation tables. Please follow the instructions as prompted. Thank you"

read -p "please input a number to generate the multiplication table  "  num1

read -p "Do you want a full table or a partial table? (Enter 'f' for full, 'p' for partial) " choice


if [ $choice = f ]; then # This block checks for the option of a full table and executes using list form for loop.

    echo "the Full multiplication table for $num1 is as follows:"

    for i in {1..10}
     do
       let "result = $((num1*i))" 
       echo "$num1 * $i = $result"
    done
  
elif [ $choice = p ]; then # This block checks for the option of a partial table .
    read -p "Enter the starting number  (between 1 and 10 ) " pa1 # This asks for the lower limit of the partial table.
     if [ $pa1 -lt 1 ] || [ $pa1 -gt 10 ]; then # lower limit check
      read -p "please ensure your starting number is between 1 and 10 " pa1 
        if [ $pa1 -lt 1 ] || [ $pa1 -gt 10 ]; then # lower limit check 2nd level before defaulting to full table
            echo "This script will print the default full table as  your starting number was not between 1 and 10"
            for i in {1..10}
                do
                 let "result = $((num1*i))" 
                 echo "$num1 * $i = $result"
              done
            exit 1 #end script after defaulting to full table
        fi
      fi
    
    read -p "Enter the ending number  (between 1 and 10 ) " pa2 # This asks for the higher limit of the partial table.
    if [ $pa2 -lt 1 ] || [ $pa2 -gt 10 ]; then # higher limit check
       read -p "please ensure your ending number is between 1 and 10 " pa2
          if [ $pa2 -lt 1 ] || [ $pa2 -gt 10 ]; then  # higher limit check 2nd level before defaulting to partial table
            echo "This script will print the default full table as  your ending number was not between 1 and 10"
            for i in {1..10}
                do
                 let "result = $((num1*i))" 
                 echo "$num1 * $i = $result"
              done
            exit 1 #end script after defaulting to full table
        fi
    fi
   echo "the partial multiplication table for $num1 is as follows:" #Partial table using c -style for loop.
    for (( i = $pa1; i < $pa2 + 1 ; i++)); do
        let "result = $((num1*i))" 
        echo "$num1 * $i = $result"
      done

fi


