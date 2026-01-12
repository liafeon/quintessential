SMODS.Joker {
    key = "timemachine",
    config = { extra = 1 },
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "jokers",
    pos = {x = 1, y = 2},
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra } }
    end
}