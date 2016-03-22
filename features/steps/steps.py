from behave import *
import time
import random

@step('a test harness')
def a_test_harness(ctx):
    ctx.sleep = time.sleep

THINGS = [
        lambda ctx: print("Help!"),
        lambda ctx: print("Doing it"),
        lambda ctx: time.sleep(.1),
        ]
@step('we do a thing')
def do_a_thing(ctx):
    thing = random.choice(THINGS)
    thing(ctx)

@step('wait {n} seconds')
def wait_n_seconds(ctx, n):
    time.sleep(float(n) / 100)

@step('we should pass')
def passed(ctx):
    pass
