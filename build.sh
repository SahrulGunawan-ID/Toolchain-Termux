clang -static \
 -o main main.c \
 -L/data/data/com.termux/files/home/root-folder/Prebuild/lib \
 -lc -lm
strip --strip-all ./main

# Enable or Disable It's Up to You
#-lstdc++

# Custom Directory Suitable for Taste
# /data/data/com.termux/files
