SMODS.Joker {
    key = "rose",
    config = { extra = 2 },
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "jokers",
    pos = {x = 0, y = 1},
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra } }
    end
}