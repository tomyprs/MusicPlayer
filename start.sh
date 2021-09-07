echo "Cloning Repo...."
git clone https://github.com/tomyprs/MusicPlayer.git /MusicPlayer
cd /MusicPlayer
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python main.py