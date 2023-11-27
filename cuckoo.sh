OUTPUT_FILE="${PROJECT_DIR}/${PROJECT_NAME}Tests/Mocks/GeneratedMocks.swift"
echo "Generated Mocks File = $OUTPUT_FILE"

INPUT_DIR="$PROJECT_DIR"
echo "Mocks Input Directory = $INPUT_DIR"

${PODS_ROOT}/Cuckoo/run generate --testable "Pokedex" \
--output "${OUTPUT_FILE}" \
"$INPUT_DIR/$(find . -name PokemonsListView.swift)" \
"$INPUT_DIR/$(find . -name PokemonRepository.swift)" 