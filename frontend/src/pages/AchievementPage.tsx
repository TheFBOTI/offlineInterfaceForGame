import AchievementCard from "../components/AchievementCard"
import { achievements as mockAchievements } from "../data/mockAchievements"
import {useState} from "react";

function AchievementsPage() {
    const [achievements, setAchievements] = useState(mockAchievements)

    function toggleAchievement(id: number) {
        setAchievements((currentAchievements) =>
            currentAchievements.map((achievement) =>
                achievement.id === id
                    ? { ...achievement, completed: !achievement.completed }
                    : achievement
            )
        )
    }
    return (
        <div className="achievement-card">
            {achievements.map((achievement) => (
                <AchievementCard
                    key={achievement.id}
                    achievement={achievement}
                    onToggleComplete={toggleAchievement}

                />
            ))}
        </div>
    )
}

export default AchievementsPage