jp2a --width=76 Images/Daisy_raw.jpg
python ImageEncryptor $1 $2 -e Images/Daisy_raw.jpg -o justin.png
convert justin.png jpg:- | jp2a --width=76 -
python ImageEncryptor $3 $4 -d justin.png -o justin_out.png
convert justin_out.png jpg:- | jp2a --width=76 -
rm justin.png justin_out.png