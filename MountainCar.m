%% This RL project will focus on the following github repo, https://github.com/openai/gym/blob/master/gym/envs/classic_control/mountain_car.py

%% Update Python env here
pyenv('Version', '/Library/Frameworks/Python.framework/Versions/3.11/bin/python3.11')

%% Make environment
env = py.gym.make('MountainCar-v0');
env.reset() % output the random starting point [xpos, velocity]

%% Try arbitary actions
for i=1:1000
    act = int16(randi([0, 2], 1)); % int16() cast matlab int to python int
    env.step(act);
    env.render()
end

env.close()
