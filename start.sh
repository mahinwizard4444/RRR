if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BXBotz2021/Spider-V2.git /Spider-V2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Spider-V2
fi
cd /Spider-V2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
