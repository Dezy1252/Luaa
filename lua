-- Function to increase player's speed by 50x
function increaseSpeed(player)
    -- Wait for character to load
    player.CharacterAdded:Connect(function(character)
        -- Check if character has a Humanoid component
        local humanoid = character:WaitForChild("Humanoid")
        if humanoid then
            -- Increase WalkSpeed by 50 times
            humanoid.WalkSpeed = humanoid.WalkSpeed * 50
            print("Player's speed increased to " .. humanoid.WalkSpeed)
        else
            print("Error: Humanoid not found")
        end
    end)
end

-- Connect the function to the PlayerAdded event
game.Players.PlayerAdded:Connect(function(player)
    -- Call the increaseSpeed function when the player is added
    increaseSpeed(player)
end)
