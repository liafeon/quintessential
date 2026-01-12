local smods_get_straight = get_straight
function get_straight(hand, min_length, skip, wrap)
    local temp_straight_edge = SMODS.Ranks.Ace.straight_edge
    if next(SMODS.find_card('j_quint_elizabethtower')) then SMODS.Ranks.Ace.straight_edge = nil end
    local ret = smods_get_straight(hand, min_length, skip, wrap)
    SMODS.Ranks.Ace.straight_edge = temp_straight_edge
    return ret
end

SMODS.Joker {
    key = "elizabethtower",
    config = {},
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "jokers",
    pos = {x = 0, y = 0},
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {}
    end
}
