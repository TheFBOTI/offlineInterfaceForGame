import type { Achievement } from "../types/achievement"

type Props = {
    achievement: Achievement
}

function AchievementCard({ achievement }: Props) {
    return (
        <div>
            <h2>{achievement.name}</h2>
            <p>{achievement.description}</p>
            <p>{achievement.progress}</p>
            <p>{achievement.completed}</p>
            <p>{achievement.reward}</p>
            <p>{achievement.id}</p>
        </div>
    )
}

export default AchievementCard