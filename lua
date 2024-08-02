-- Function to multiply player's Exp by 1000
function multiplyExp(player)
    -- Wait for character to load
    player.CharacterAdded:Connect(function(character)
        -- Assuming 'Exp' is an IntValue under the player's character
        local exp = character:WaitForChild("Exp")
        if exp then
            exp.Changed:Connect(function()
                exp.Value = exp.Value * 1000
                print("Player's Exp increased to " .. exp.Value)
            end)
        else
            print("Error: Exp not found")
        end
    end)
end

-- Connect the function to the PlayerAdded event
game.Players.PlayerAdded:Connect(function(player)
    -- Call the multiplyExp function when the player is added
    multiplyExp(player)
end)
