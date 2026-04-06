## Full Deployment Guide (Step by Step)

### Step 1 — Add Tempo to MetaMask
1. Go to [1rpc.io/ecosystem/tempo](https://1rpc.io/ecosystem/tempo)
2. Click **"Add to MetaMask"**
3. Approve the network in MetaMask
4. Switch MetaMask to **Tempo** network

### Step 2 — Bridge USDC to Tempo
1. Go to [Stargate Finance](https://stargate.finance) or [Relay Bridge](https://relay.link)
2. Select your source chain (Base, Ethereum, etc.)
3. Select **Tempo** as destination
4. Bridge at least **$5 PathUSD** — enough for all 10 deployments
5. Confirm in MetaMask and wait for funds to arrive

### Step 3 — Open Remix IDE
1. Go to [remix.ethereum.org](https://remix.ethereum.org)
2. In the left sidebar click the **"contracts"** folder
3. Click the **new file icon** (page with + sign)
4. Name the file e.g. `SimpleStorage.sol`

### Step 4 — Paste the Contract Code
1. Copy any contract from the `contracts/` folder in this repo
2. Paste it into the Remix editor
3. A popup may appear saying "New code pasted" — click **Close** (it is safe)

### Step 5 — Compile the Contract
1. Click the **Solidity Compiler** icon in the left sidebar (S shape)
2. Make sure compiler version is **0.8.0 or higher**
3. Click **"Compile [filename].sol"**
4. Look for a **green checkmark** ✅ — this means it compiled successfully
5. Yellow warnings are fine — only red errors stop you

### Step 6 — Connect MetaMask to Remix
1. Click **"Deploy & Run Transactions"** icon in the left sidebar (Ethereum diamond)
2. Click the **Environment** dropdown
3. Select **"Injected Provider - MetaMask/Rabby"**
4. MetaMask/Rabby will pop up — click **Connect**
5. Make sure it shows **Tempo** network and your wallet address

### Step 7 — Deploy the Contract
1. Scroll down to the **Deploy** button (orange)
2. Click **"Deploy"**
3. MetaMask will pop up asking to confirm the transaction
4. Check the gas fee (should be less than $0.001)
5. Click **"Confirm"**
6. Wait a few seconds — you will see the contract appear under **"Deployed Contracts"** ✅

### Step 8 — Repeat for All 10 Contracts
1. Create a new file for each contract
2. Paste the code → Compile → Deploy
3. Confirm each one in MetaMask
4. Total cost for all 10 deployments is under **$0.01**

> ⚠️ Note: Contract 10 (TokenTracker) requires 3 inputs before deploying:
> - Token name: `"TempoToken"`
> - Token symbol: `"TPT"`  
> - Supply: `1000`
> 
> Fill these in the input fields next to the Deploy button before clicking Deploy.

### Step 9 — Verify Your Deployments
1. Go to [explore.tempo.xyz](https://explore.tempo.xyz)
2. Paste your wallet address in the search bar
3. Click the **"Contracts"** tab
4. You should see all 10 contracts deployed ✅
