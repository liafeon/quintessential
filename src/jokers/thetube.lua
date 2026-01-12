SMODS.Joker {
    key = "thetube",
    config = { extra = { chip_mod = 8, chips = 0 } },
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "jokers",
    pos = {x = 0, y = 3},
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chip_mod, card.ability.extra.chips } }
    end
}