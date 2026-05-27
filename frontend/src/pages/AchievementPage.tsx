import AchievementCard from "../components/AchievementCard"
import { achievements } from "../data/mockAchievements"

function AchievementsPage() {
    return (
        <div>
            {achievements.map((achievement) => (
                <AchievementCard
                    key={achievement.id}
                    achievement={achievement}
                />
            ))}
        </div>
    )
}

export default AchievementsPage