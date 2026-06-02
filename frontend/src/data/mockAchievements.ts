import type {Achievement} from "../types/achievement.ts";

export const achievements: Achievement[] = [
    {
        id: 1,
        name: "New Steps",
        description: "Log into Chaos",
        progress: 0,
        completed: false,
        reward: "Here take this, it's dangerous to go alone: 300 xp",
        completedAt: 100,
        rewardID: 1,
    },
    {
        id: 2,
        name: "Slayyerrr",
        description: "Kill something, anything, please.",
        progress: 0,
        completed: false,
        reward: "How'd that feel? +5 health",
        completedAt: 1,
        rewardID: 2,
    },
    {
        id: 3,
        name: "Reach for the stars",
        description: "Go on, Jump. I dare ya.",
        progress: 0,
        completed: false,
        reward: "Nioce, you can jump a tad higher now.",
        completedAt: 100,
        rewardID: 3,
    }
]