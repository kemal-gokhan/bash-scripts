
shebang
Variable atamak için boşluk bırakılmayacaktır.
Değişken kullanmak için $ işareti kullanmamızlazım.
alias kullanmak da önemlidir. alias kısayoldur. alias ping='ping -c 5'
parametre şeklinde istersen ${} olması lazım.bunun içinde bazı komutlar kullanabiliyorsunuz. ${değişken:-3} gibi
dizi=(1 2 3 4)
echo ${dizi[2]}
range için {1..5} şeklinde kullanılıyor.
'''

input() -> read Indirect

if [ boşluk = 1 ]; then
echo "kemal"
else
echo "gokhan"
fi

|| -> execute ilk fail olursa
&& -> ilki çalışırsa, çalıştır.

echo $(( 10 + 5 )) #matematiksel çıktı almak

variable=$(cat a.txt) #linux komutlarını kullanmak
echo "There are $(ls | wc -l) items here."

$1 $2
function foo () # fonksiyon oluşturmak
{
    echo "Arguments work just like script arguments: $@"
    echo "And: $1 $2..."
    echo "This is a function"
    returnValue=0    # Variable values can be returned
    return $returnValue #çıktıyı almak
}

#dosya operatörleri
-b file     Checks if file is a block special file; if yes, then the condition becomes true.    [ -b $file ] is false.
-c file     Checks if file is a character special file; if yes, then the condition becomes true.    [ -c $file ] is false.
-d file     Checks if file is a directory; if yes, then the condition becomes true.     [ -d $file ] is not true.
-f file     Checks if file is an ordinary file as opposed to a directory or special file; if yes, then the condition becomes true.  [ -f $file ] is true.
-g file     Checks if file has its set group ID (SGID) bit set; if yes, then the condition becomes true.    [ -g $file ] is false.
-k file     Checks if file has its sticky bit set; if yes, then the condition becomes true.     [ -k $file ] is false.
-p file     Checks if file is a named pipe; if yes, then the condition becomes true.    [ -p $file ] is false.
-t file     Checks if file descriptor is open and associated with a terminal; if yes, then the condition becomes true.  [ -t $file ] is false.
-u file     Checks if file has its Set User ID (SUID) bit set; if yes, then the condition becomes true.     [ -u $file ] is false.
-r file     Checks if file is readable; if yes, then the condition becomes true.    [ -r $file ] is true.
-w file     Checks if file is writable; if yes, then the condition becomes true.    [ -w $file ] is true.
-x file     Checks if file is executable; if yes, then the condition becomes true.  [ -x $file ] is true.
-s file     Checks if file has size greater than 0; if yes, then condition becomes true.    [ -s $file ] is true.
-e file     Checks if file exists; is true even if file is a directory but exists.  [ -e $file ] is true.