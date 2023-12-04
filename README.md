# PiUVC
Purpose built embedded Linux image to use Raspberry Pi boards &amp; camera module combos as an easy to use plug &amp; play UVC Gadget.

## Overview
- This is a buildroot setup with bare minimum changes necessary to support all Raspberry Pi boards & Camera Modules.
- Faced with a choice between backward compatibility vs minimalist maintenance - we'll always choose the latter.
- It's implemented with useability & convenience necessary to be used as a daily driver & not a tech demo.
- It's ultra lean, fast, barebone & NOT feature rich - once set up by the user, it's maintenance free.

## Inspiration
I learned quite a bit while exploring my options to make a Raspberry Pi based WebCam. It started off tame & lame (going by the 3 year old guides); but soon it spun out of control while being progressively more fun & weird. Here's the video that captures the highlights (at supersonic speed, because how my ADHD interferes with my editing skills):

[![Raspberry Pi based DIY USB SuperCam](https://img.youtube.com/vi/xwQgmm-wH2U/maxresdefault.jpg)](https://youtu.be/xwQgmm-wH2U)

It's probably first video of an upcoming series; and I've also a [deep dive live stream](https://youtube.com/live/Wn48GLGs_Jc) to explain further into it.

While I got what I was looking for, and the result was more than satisfactory when compared to off-the-shelf $100-150 WebCams, I realized that this ecosystem is capable of so much more than that. The main issue with people not exploring this as an option more widely is with the entry barrier.

Yes, there's [showmewebcam](https://github.com/showmewebcam/showmewebcam), which lowers the entry barrier by making it easier... the design is a patchwork of obsolete components flimsily held together like a jenga tower on its last leg. Which makes it very hard to [update/upgrade/improve](https://github.com/showmewebcam/showmewebcam/pulls)... because changing almost anything upsets the balance. As a result, it's yet to support [RPi Zero 2 W or Camera Module v3](https://github.com/showmewebcam/showmewebcam/pull/197) (for using quite old buildroot snapshot). Which makes it quite unusable by eliminating the latest and best combination(s) from the available options.

In this repo I'm going to attempt to fix that with a rather radical & hyperminimalist approach; learning from SMWC. Which is why I'm keeping the same license, in case I end up copying code (especially the build/automation scripts).

One's free to assume this as a derivative work of SMWC. However, the reasons for this being it's own repo & not a set of PR to it, are:
- SMWC has way too many tech debts, it's better to start over
- SMWC moves too slow, almost as if there's a lack of intent to continue
- SMWC implements [features](https://github.com/showmewebcam/showmewebcam/pull/57#discussion_r533752172) that may [unnecessarily complicate](https://github.com/showmewebcam/showmewebcam/blob/master/.github/workflows/release.yml#L55..L58) the ensemble
- SMWC has a higher potential celing, if it can shed off its baggages (but I wouldn't hold my breath)
- I am not good at asking for permissions; I'd rather do it my way, instead of going around convicing people to do it my way
