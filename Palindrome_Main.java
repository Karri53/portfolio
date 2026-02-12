<script type="module">
    import initWasm from './Palindrome_Main.js';

    let wasmModule;

    async function loadWasm() {
        wasmModule = await initWasm();
        console.log("WASM Loaded Successfully!");
    }

    function checkPalindrome() {
        if (!wasmModule) {
            document.getElementById("palindrome-result").textContent = "WASM not loaded yet!";
            return;
        }

        let word = document.getElementById("palindrome-input").value.toLowerCase().replace(/[^a-z0-9]/g, '');
        let reversed = word.split("").reverse().join("");

        if (word === reversed) {
            document.getElementById("palindrome-result").textContent = "It's a palindrome!";
        } else {
            document.getElementById("palindrome-result").textContent = "Not a palindrome.";
        }
    }

    loadWasm();
</script>
