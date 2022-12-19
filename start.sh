if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ThanzeerCould1/GFilter.git /GFilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /GFilter
fi
cd /GFilter
pip3 install -U -r requirements.txt
echo "Starting GFilter MHD...."
python3 bot.py
