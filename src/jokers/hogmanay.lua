SMODS.Joker {
    key = "hogmanay",
    config = { extra = { x_mult_mod = 1, x_mult = 1} },
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "jokers",
    pos = {x = 3, y = 0},
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult_mod, card.ability.extra.x_mult } }
    end
}