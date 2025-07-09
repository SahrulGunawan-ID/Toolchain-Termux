# Toolchain 2025

🔥 **Toolchain Setup**  

```markdown
# Toolchain Setup for Android  

## Author  
**Sahrul Gunawan Cyber**  
- **GitHub:** [https://github.com/SahrulGunawan-ID/Toolchain-Termux/]  
- **Email:** [sahrulgunawantlogo555@gmail.com]  

## Package Contents Toolchain  
- GNU Toolchain  
- Libc Or Libc.a  

## Target Host  
- `aarch64-linux-android`  
- `arm-linux-androideabi`  
- `i686-linux-android -> Not Included `  
- `riscv64-linux-android -> Not Included `  
- `x86_64-linux-android -> Not Included `  

## How to Use  
```bash
mkdir -p root-folder
cd root-folder
mkdir Prebuild
```

## Prebuild External Folder Structure  
```plaintext
~/root-folder $ pwd
/data/data/com.termux/files/home/root-folder
~/root-folder $ tree
.
├── Prebuild
│   └── lib
├── build.sh
└── main.c

3 directories, 2 files
```

## Script for `build.sh`  
```bash
# All Module Export  
export LIBRARY_PATH=/data/data/com.termux/files/home/root-folder/Prebuild/lib  
export C_INCLUDE_PATH=/data/data/com.termux/files/home/root-folder/Prebuild/include  
export CPLUS_INCLUDE_PATH=/data/data/com.termux/files/home/root-folder/Prebuild/include  

# System Clang Default  
clang -static \  
 -o main main.c \  
 -L/data/data/com.termux/files/home/root-folder/Prebuild/lib \  
 -lc -lm  
strip --strip-all ./main  
#-lstdc++  
```

## Script for `main.c`  
```c
#include <stdio.h>

int main() {
    printf("Hello, AArch64 Linux Android!\n");
    return 0;
}
```

## Binary Output  
```plaintext
~/root-folder $ ./main  
Hello, AArch64 Linux Android!  
```

# Direct FOR Arm/armhf
[https://raw.githubusercontent.com/SahrulGunawan-ID/Toolchain-Termux/refs/heads/superuser/Archives/arm-linux-androideabi.tar.xz]

# Direct For AARCH64/ARM64
[https://raw.githubusercontent.com/SahrulGunawan-ID/Toolchain-Termux/refs/heads/superuser/Archives/aarch64-linux-android.tar.xz]


🚀 **Now you're ready to build statically linked binaries with your toolchain setup! 🔧**  

# Additional 
**If You Are Having Any Architecture Deficiencies Or It Is Not Here Download The Full Version In The Link Below**

# Google LLC
**[https://dl.google.com/android/repository/android-ndk-r28b-linux.zip]**
