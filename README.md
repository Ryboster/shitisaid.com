# ShitIsaid.com

----
##### Shitisaid.com is a free-to-use transcripts amalgamator.
##### It accepts a wide range of artifacts, converts them to transcripts, and allows
##### the user to store, browse, and access them easily and conveniently online.
##### The website accepts a variety of text, audio, and video formats, as well as URLs for maximum convenience!
----

### Architecture
##### This application runs 3 parallel docker containers. Frontend, Backend, and Database.
##### They communicate via pre-established exposed ports. Separation improves control, scaling, and performance.

### How to Run

#### Before running!
open and edit config.txt. Make sure the ports aren't blocked.

```bash
sudo chmod +x install.sh
./install.sh
```
* Running this will install all three docker containers.


#### To reconfigure after building, edit `config.txt` and run `install.sh` again. This will reinstall all three containers.