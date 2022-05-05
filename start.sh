if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://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@github.com/mahinwizard4444/RRR.git /RRR
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RRR
fi
cd /RRR
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
