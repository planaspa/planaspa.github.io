---
lang: en
permalink: /2026/08/24/Selling-Data-Wall-Street-Part-2-The-Backtest-That-Killed-the-Deal/
layout: post
title: "Selling Data Products to Wall Street, Part 2: The Backtest That Killed the Deal"
post_pic: /assets/img/posts/20260810/data-stickiness-paradox.png
date: 2026-08-24 09:00:00 +0000
tags: [fintech, finance, data, product]
summary: "The demo worked. The backtest looked phenomenal. They threw the dataset away anyway — because the history was lying."
---

The backtest printed money.

Five years of historical data, a quant model run end to end, an equity curve that did exactly what every vendor dreams of — and the buyer deleted the folder anyway.

Not because the data was wrong today. Because it was **too right about yesterday**.

{% include posts/block_text.html text="In software, fixing a bug in old records is good engineering. In quantitative finance, it is look-ahead bias — and it is fatal." %}

## If you sell data into finance, you know this world

Imagine you run a company whose core business is selling data — or access to data — into the financial sector.

Your customers are banks, asset managers, hedge funds, insurers, and the vendors that serve them. Your product might be market reference data, alternative datasets, ESG scores, supply chain intelligence, or structured access to filings and corporate records. Different categories, same commercial reality: you are not selling software that happens to include data. **You are selling data as the product.**

If that is your world, there is a situation many teams in this industry eventually face — and it can end a deal that looked won long before it actually was.

## The deal that died after the demo

The first act usually goes well.

You finish a strong meeting. The buyer's team picks three companies they know inside out — obscure subsidiaries, stale filings, edge cases that never make it into a pitch deck. You show the attributes. Every field matches. The room shifts from polite interest to something closer to relief.

You have passed the spot check. That is usually the moment vendors start counting the deal as theirs.

Then comes the long middle: legal, InfoSec, model validation, the institutional tour. Months pass. Eventually the quant team receives a historical dump and runs the question every serious buyer asks before production:

*If we had owned this data five years ago, would our decisions have made sense?*

That is what a backtest is. Not a vanity exercise. A trust audition at scale.

And sometimes the backtest looks **too good**. Returns that would have made any portfolio manager lean forward. A dataset that seems to prove its own value in one run.

Then the file gets rejected.

## When the history is lying

The pattern, when you look at it from the outside, is always unsettling in the same way.

The demo had been flawless. The current snapshot was clean, rich, and consistent with what the buyer already knew about the world *right now*. That was exactly the problem.

The post-mortem is usually slow and uncomfortable. Take a common case: a company in the dataset had restated its Q3 2022 financial results in mid-2023. That happens. Filings get corrected. Auditors push adjustments. The real world updates its story.

A trading model operating in December 2022, however, only knew the **original** Q3 number — the one available at the time. It could not know the restatement that would arrive months later.

The vendor's historical file had quietly "fixed" the past. The corrected 2023 figure was retroactively applied to 2022 rows. From the model's point of view, that was not improved data quality. That was **clairvoyance**.

This is called **look-ahead bias**: letting a simulation see information that did not exist yet at the decision point.

It is one of the fastest ways a data deal dies after a great demo — often before anyone can articulate why.

## The time machine test

Financial buyers do not only ask what a datapoint is today. They ask what it looked like on a specific day in the past:

*What did this field say on Tuesday, March 14th, at 10:15 AM?*

*What was known then, what changed later, and when did we learn about it?*

That architecture has a name: **point-in-time**, or PIT. A PIT dataset preserves the state of knowledge as it existed at each moment — including wrong numbers that were later corrected, delayed filings that had not landed yet, and ratings that had not been downgraded.

If your data engine cannot behave like a flawless time machine, it does not matter how accurate your current numbers are. They cannot trade on it. They cannot manage risk on it. They cannot defend it when a model fails or a regulator asks why a past decision made sense at the time.

There is a sibling failure mode worth naming: **survivorship bias**. If companies that went bankrupt three years ago have simply vanished from your historical file, you have not cleaned your dataset — you have rewritten the past to only include winners.

## Today's accuracy is table stakes

The cruel part is that the instinct that kills you is usually a good one.

Find errors. Fix them. Improve the record. That is what most software teams are trained to do, and it wins in nearly every other industry.

In quantitative finance, the buyer does not want the best retrospective truth. They want **honest historical truth** — the messy version the market actually had to act on.

That is a different product. And far too few vendors seem to be building it.

{% include posts/block_text.html text="Your dataset was not wrong today. It was too right about outcomes the market had not learned yet." %}

## What actually passes due diligence

If you sell data into regulated finance, treat these as core product requirements — not nice-to-have engineering details:

- **Point-in-time history** — values as known at date T, not as corrected later
- **Immutable audit trail** — what changed, when, and why
- **Survivorship policy** — dead companies stay in history, visibly dead
- **Restatement handling** — original and revised values both preserved with timestamps

The demo gets you into the room. The time machine gets you through validation.

Most vendors optimize for the number on the screen right now. The ones who win long term optimize for what that number looked like before anyone knew what would happen next.

That is not a data quality problem. That is the product.
