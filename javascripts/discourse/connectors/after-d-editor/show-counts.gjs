import CharacterCounts from "../../components/character-counts";

<template>
  <CharacterCounts
    @missingReplyCharacters={{@outletArgs.composer.missingReplyCharacters}}
    @length={{@outletArgs.composer.replyLength}}
    @minimumLength={{@outletArgs.composer.minimumPostLength}}
  />
</template>
