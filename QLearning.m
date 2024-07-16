%% Environment set up
pyenv('Version', '/Library/Frameworks/Python.framework/Versions/3.11/bin/python3.11')
env = py.gym.make('MountainCar-v0');
env.reset() % output the random starting point [xpos, velocity]

%% 

