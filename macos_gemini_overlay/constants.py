# Apple libraries
from Quartz import (
    kCGEventFlagMaskAlternate,
    kCGEventFlagMaskCommand,
    kCGEventFlagMaskControl,
    kCGEventFlagMaskShift,
)


WEBSITE = "https://gemini.google.com?referrer=macos-gemini-overlay"
LOGO_WHITE_PATH = "logo/logo_white.png"
LOGO_BLACK_PATH = "logo/logo_black.png"
FRAME_SAVE_NAME = "GeminiWindowFrame"
APP_TITLE = "Gemini"
PERMISSION_CHECK_EXIT = 1
CORNER_RADIUS = 15.0
DRAG_AREA_HEIGHT = 30
STATUS_ITEM_CONTEXT = 1
LAUNCHER_TRIGGER_MASK = (
    kCGEventFlagMaskShift |
    kCGEventFlagMaskControl |
    kCGEventFlagMaskAlternate |
    kCGEventFlagMaskCommand
)
# Default trigger is "Option + Space".
LAUNCHER_TRIGGER = {
    "flags": kCGEventFlagMaskAlternate,
    "key": 49
}
