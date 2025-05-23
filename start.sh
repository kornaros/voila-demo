#!/bin/bash
export PORT=${PORT:-8866}
exec voila coin_game.ipynb --port=$PORT --no-browser --ip=0.0.0.0
