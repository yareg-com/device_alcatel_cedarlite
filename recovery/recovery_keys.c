#include <linux/input.h>

#include "common.h"
#include "extendedcommands.h"
#include "recovery_ui.h"

int device_handle_key(int key_code, int visible) {
	if (visible) {
		switch (key_code) {
			case KEY_VOLUMEDOWN:
				return HIGHLIGHT_DOWN;
<<<<<<< HEAD
	
			case KEY_UP:
				return HIGHLIGHT_UP;
	
			case KEY_POWER:
				return SELECT_ITEM;
	
		}
	}
=======

			case KEY_UP:
				return SELECT_ITEM;

			case KEY_POWER:
				return SELECT_ITEM;

		}
	}

>>>>>>> 19db8e59b86a825ffd157b213f86663510e2c6dc
	return NO_ACTION;
}
