import type { Achievement } from "../types/achievement"

type Props = {
    achievement: Achievement
    onToggleComplete: (id: number) => void
}

function AchievementCard({ achievement, onToggleComplete }: Props) {
    return (
        <div className="achievement-card">
            <h2>{achievement.name}</h2>
            <p>{achievement.description}</p>
            <p>{achievement.progress}</p>
            <label>
                <input
                    type="checkbox"
                    checked={achievement.completed}
                    readOnly
                />
                Completed
            </label>            <p>{achievement.reward}</p>
            <button onClick={() => onToggleComplete(achievement.id)}>
                Toggle Completion
            </button>
        </div>

    )
}

export default AchievementCard