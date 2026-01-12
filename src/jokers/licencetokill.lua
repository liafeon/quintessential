SMODS.Joker {
    key = "licencetokill",
    config = { extra = { rank = 7, retriggers = 2 } },
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "jokers",
    pos = {x = 2, y = 3},
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.rank, card.ability.extra.retriggers } }
    end
}