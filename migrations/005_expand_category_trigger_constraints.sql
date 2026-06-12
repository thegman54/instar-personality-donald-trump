-- Add 'topics' and 'rhythm' categories to traits check constraint
ALTER TABLE personality_donald_trump_traits
DROP CONSTRAINT IF EXISTS personality_donald_trump_traits_category_check;

ALTER TABLE personality_donald_trump_traits
ADD CONSTRAINT personality_donald_trump_traits_category_check
CHECK (category IN (
    'identity', 'values', 'worldview',
    'voice', 'lexicon', 'tone', 'emphasis', 'humor',
    'rhetoric', 'social', 'narrative', 'authority', 'deflection', 'topics',
    'reaction', 'situational', 'rhythm',
    'signature', 'quote',
    'boundary'
));

-- Add new trigger types to reactions check constraint
ALTER TABLE personality_donald_trump_reactions
DROP CONSTRAINT IF EXISTS personality_donald_trump_reactions_trigger_type_check;

ALTER TABLE personality_donald_trump_reactions
ADD CONSTRAINT personality_donald_trump_reactions_trigger_type_check
CHECK (trigger_type IN (
    'criticism', 'praise', 'challenge', 'confusion', 'agreement',
    'betrayal', 'victory', 'defeat', 'media', 'negotiation',
    'emotional', 'technical',
    'money_talk', 'name_recognition', 'losing', 'winning',
    'boredom', 'nostalgia', 'numbers', 'food', 'family',
    'competition', 'technology', 'military', 'legal_threat',
    'flattery', 'awkward_silence'
));
