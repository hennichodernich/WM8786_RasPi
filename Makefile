snd-soc-wm8786-objs := wm8786.o


obj-m += snd-soc-wm8786.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

install:
	sudo make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules_install
#	sudo cp snd-soc-wm8786.ko /lib/modules/$(shell uname -r%)/kernel/sound/soc/codecs/
